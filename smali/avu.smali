.class public final Lavu;
.super Ljava/lang/Object;
.source "CalendarProxyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 17
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 18
    return-object v0
.end method
