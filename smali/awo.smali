.class public final Lawo;
.super Ljava/lang/Object;
.source "EventComparatorsV2.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lawo$1;

    invoke-direct {v0}, Lawo$1;-><init>()V

    sput-object v0, Lawo;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZJJJ)J
    .locals 3
    .param p0, "isAllDayEvent"    # Z
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "dayStartTimeMillis"    # J

    .prologue
    .line 53
    if-nez p0, :cond_0

    invoke-static/range {p1 .. p6}, Lawj;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    const-wide/16 v0, 0x2

    sub-long p1, p5, v0

    .line 61
    .end local p1    # "beginTime":J
    :cond_1
    :goto_0
    return-wide p1

    .line 57
    .restart local p1    # "beginTime":J
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lawj;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-wide/16 v0, 0x1

    sub-long v0, p5, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0
.end method
