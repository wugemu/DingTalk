.class public final Lasf;
.super Ljava/lang/Object;
.source "CalendarReportDataObject.java"


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "calendarId"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "version"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lasf;->a:J

    .line 14
    iput-wide p3, p0, Lasf;->b:J

    .line 15
    iput-wide p5, p0, Lasf;->c:J

    .line 16
    iput-wide p7, p0, Lasf;->d:J

    .line 17
    return-void
.end method
