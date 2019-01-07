.class public final Ljd;
.super Ljava/lang/Object;
.source "QualityChangeFilter.java"


# instance fields
.field a:Z

.field b:Z

.field private final c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Ljd;->c:D

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljd;->a:Z

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljd;->b:Z

    return-void
.end method
