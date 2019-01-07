.class public Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
.super Ljava/lang/Object;
.source "TimeDes.java"


# instance fields
.field public day:I

.field public hour:I

.field public isUTC:Z

.field public minute:I

.field public month:I

.field public second:I

.field public tzId:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->day:I

    .line 36
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->hour:I

    .line 37
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->minute:I

    .line 38
    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->second:I

    .line 39
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->month:I

    .line 40
    const/16 v0, 0x7b2

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->year:I

    .line 41
    iput-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->isUTC:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->second:I

    return v0
.end method

.method public getTzId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->tzId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->year:I

    return v0
.end method

.method public isUTC()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->isUTC:Z

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->day:I

    .line 51
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->hour:I

    .line 59
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->minute:I

    .line 75
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->month:I

    .line 83
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->second:I

    .line 91
    return-void
.end method

.method public setTzId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tzId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->tzId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUTC(Z)V
    .locals 0
    .param p1, "UTC"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->isUTC:Z

    .line 67
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->year:I

    .line 107
    return-void
.end method
