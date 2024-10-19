import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Prisma, Stats } from '@prisma/client';

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}

  async add(data: Prisma.StatsCreateInput): Promise<Stats> {
    data.handicapPerc = data.matches
      ? (data.handicap * 100) / data.matches
      : 100;
    data.overPerc = data.matches ? (data.overPerc * 100) / data.matches : 100;
    data.underPerc = data.matches ? (data.under * 100) / data.matches : 100;
    return this.prisma.stats.create({
      data,
    });
  }

  async get(): Promise<Stats[]> {
    return this.prisma.stats.findMany({
      orderBy: [
        { handicapPerc: 'asc' },
        { overPerc: 'asc' },
        { underPerc: 'asc' },
        { matches: 'desc' },
      ],
    });
  }

  async update(id: number, data: Stats): Promise<Stats> {
    const oldStats = await this.prisma.stats.findUnique({
      where: {
        id,
      },
    });

    const newData = <Stats>{
      ...oldStats,
      ...data,
      matches: oldStats.matches + data.matches,
      handicap:
        oldStats.handicap === null ? null : oldStats.handicap + data.handicap,
      over: oldStats.over + data.over,
      under: oldStats.under + data.under,
    };
    newData.handicapPerc =
      newData.handicapPerc === null
        ? null
        : newData.matches
          ? (newData.handicap * 100) / newData.matches
          : 100;
    newData.overPerc = newData.matches
      ? (newData.over * 100) / newData.matches
      : 100;
    newData.underPerc = newData.matches
      ? (newData.under * 100) / newData.matches
      : 100;

    return this.prisma.stats.update({
      where: {
        id,
      },
      data: newData,
    });
  }
}
