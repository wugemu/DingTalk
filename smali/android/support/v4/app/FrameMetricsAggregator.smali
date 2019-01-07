.class public final Landroid/support/v4/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FrameMetricsAggregator$a;,
        Landroid/support/v4/app/FrameMetricsAggregator$b;,
        Landroid/support/v4/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FrameMetricsAggregator$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FrameMetricsAggregator;-><init>(I)V

    .line 202
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "metricTypeFlags"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 216
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/app/FrameMetricsAggregator$a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->a:Landroid/support/v4/app/FrameMetricsAggregator$b;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/app/FrameMetricsAggregator$b;-><init>(B)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->a:Landroid/support/v4/app/FrameMetricsAggregator$b;

    goto :goto_0
.end method
