.class public final Lavl;
.super Ljava/lang/Object;
.source "CalendarDateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 20
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 21
    .local v0, "is24HourFormat":Z
    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcog;->d(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
