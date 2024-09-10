import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Prisma, Stats } from '@prisma/client';

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}

  add(data: Prisma.StatsCreateInput): Promise<Stats> {
    data.percentage = data.matches
      ? (data.badMatches * 100) / data.matches
      : 100;
    return this.prisma.stats.create({
      data,
    });
  }

  get(): Promise<Stats[]> {
    return this.prisma.stats.findMany({
      orderBy: [{ percentage: 'asc' }, { matches: 'desc' }],
    });
  }

  update(id: number, data: Prisma.StatsUpdateInput): Promise<Stats> {
    return this.prisma.stats.update({
      where: {
        id,
      },
      data,
    });
  }
}
