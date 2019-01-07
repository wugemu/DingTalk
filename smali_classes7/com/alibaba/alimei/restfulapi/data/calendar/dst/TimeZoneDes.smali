.class public Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;
.super Ljava/lang/Object;
.source "TimeZoneDes.java"


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public second:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->day:I

    .line 17
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->hour:I

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->minute:I

    .line 19
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->second:I

    .line 20
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->month:I

    .line 21
    const/16 v0, 0x7b2

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->year:I

    .line 22
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->second:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->day:I

    .line 30
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->hour:I

    .line 38
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->minute:I

    .line 46
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->month:I

    .line 54
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->second:I

    .line 62
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->year:I

    .line 70
    return-void
.end method
