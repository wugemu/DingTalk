.class final Landroid/support/v4/app/FrameMetricsAggregator$a;
.super Landroid/support/v4/app/FrameMetricsAggregator$b;
.source "FrameMetricsAggregator.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static e:Landroid/os/HandlerThread;

.field private static f:Landroid/os/Handler;


# instance fields
.field a:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private b:I

.field private c:[Landroid/util/SparseIntArray;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 340
    sput-object v0, Landroid/support/v4/app/FrameMetricsAggregator$a;->e:Landroid/os/HandlerThread;

    .line 341
    sput-object v0, Landroid/support/v4/app/FrameMetricsAggregator$a;->f:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "trackingFlags"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FrameMetricsAggregator$b;-><init>(B)V

    .line 338
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->c:[Landroid/util/SparseIntArray;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->d:Ljava/util/ArrayList;

    .line 347
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$a$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FrameMetricsAggregator$a$1;-><init>(Landroid/support/v4/app/FrameMetricsAggregator$a;)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->a:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 344
    iput p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->b:I

    .line 345
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/FrameMetricsAggregator$a;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FrameMetricsAggregator$a;

    .prologue
    .line 332
    iget v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->b:I

    return v0
.end method

.method static a(Landroid/util/SparseIntArray;J)V
    .locals 7
    .param p0, "buckets"    # Landroid/util/SparseIntArray;
    .param p1, "duration"    # J

    .prologue
    .line 398
    if-eqz p0, :cond_0

    .line 399
    const-wide/32 v2, 0x7a120

    add-long/2addr v2, p1

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 400
    .local v0, "durationMs":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 403
    .local v1, "oldValue":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    .end local v0    # "durationMs":I
    .end local v1    # "oldValue":I
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/FrameMetricsAggregator$a;)[Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FrameMetricsAggregator$a;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$a;->c:[Landroid/util/SparseIntArray;

    return-object v0
.end method
