.class public Lcom/alipay/mobile/security/bio/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(J)Ljava/lang/String;
    .locals 6
    .param p0, "sd"    # J

    .prologue
    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 9
    .local v0, "dat":Ljava/util/Date;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 10
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 11
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddhhmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 13
    .local v3, "sb":Ljava/lang/String;
    return-object v3
.end method

.method public static getSimpleDateFormat(J)Ljava/lang/String;
    .locals 6
    .param p0, "sd"    # J

    .prologue
    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 18
    .local v0, "dat":Ljava/util/Date;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 19
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "sb":Ljava/lang/String;
    return-object v3
.end method
