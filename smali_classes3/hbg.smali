.class public final Lhbg;
.super Ljava/lang/Object;
.source "Cubic.java"

# interfaces
.implements Lhbh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DDDD)D
    .locals 5
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    div-double v0, p1, p7

    sub-double p1, v0, v2

    mul-double v0, p1, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(DDDD)D
    .locals 7
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 17
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p7, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    .line 18
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr p1, v2

    mul-double v2, p1, p1

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    goto :goto_0
.end method
