import { Body, Controller, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { Stats } from '@prisma/client';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post()
  add(@Body() data: Stats): Promise<Stats> {
    return this.appService.add(data);
  }
}
