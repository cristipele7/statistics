import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Prisma, Stats } from '@prisma/client';

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}

  add(data: Prisma.StatsCreateInput): Promise<Stats> {
    return this.prisma.stats.create({
      data,
    });
  }
}
