import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Prisma, Stats } from '@prisma/client';

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}

  async add(data: Prisma.StatsCreateInput): Promise<Stats> {
    data.percentage = data.matches
      ? (data.badMatches * 100) / data.matches
      : 100;
    return this.prisma.stats.create({
      data,
    });
  }

  async get(): Promise<Stats[]> {
    return this.prisma.stats.findMany({
      orderBy: [{ percentage: 'asc' }, { matches: 'desc' }],
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
      badMatches: oldStats.badMatches + data.badMatches,
    };
    newData.percentage = newData.matches
      ? (newData.badMatches * 100) / newData.matches
      : 100;

    return this.prisma.stats.update({
      where: {
        id,
      },
      data: newData,
    });
  }
}
