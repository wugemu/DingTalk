.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;
.source "DateTime.java"


# instance fields
.field public day:I

.field public hour:I

.field public isUtc:Z

.field public minute:I

.field public month:I

.field public second:I

.field public tzId:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public toMiliseconds()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 23
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->tzId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 26
    .local v7, "tz":Ljava/util/TimeZone;
    if-eqz v7, :cond_0

    .line 27
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 31
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->year:I

    iget v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->day:I

    iget v4, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->hour:I

    iget v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->minute:I

    iget v6, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->second:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 32
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 29
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .restart local v0    # "calendar":Ljava/util/Calendar;
    goto :goto_0
.end method

.method public toTimeZoneDes()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;-><init>()V

    .line 39
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->year:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->year:I

    .line 40
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->month:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->month:I

    .line 41
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->day:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->day:I

    .line 42
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->hour:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->hour:I

    .line 43
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->minute:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->minute:I

    .line 44
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->second:I

    iput v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;->second:I

    .line 45
    return-object v0
.end method
