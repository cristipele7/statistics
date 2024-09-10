import { Body, Controller, Get, Param, Post, Put } from '@nestjs/common';
import { AppService } from './app.service';
import { Stats } from '@prisma/client';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post()
  add(@Body() data: Stats): Promise<Stats> {
    return this.appService.add(data);
  }

  @Get()
  get(): Promise<Stats[]> {
    return this.appService.get();
  }

  @Put('/:id')
  update(@Body() data: Stats, @Param('id') id: number): Promise<Stats> {
    return this.appService.update(Number(id), data);
  }
}
