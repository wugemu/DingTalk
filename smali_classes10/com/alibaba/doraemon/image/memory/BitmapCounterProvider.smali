.class public Lcom/alibaba/doraemon/image/memory/BitmapCounterProvider;
.super Ljava/lang/Object;
.source "BitmapCounterProvider.java"


# static fields
.field private static final KB:J = 0x400L

.field public static final MAX_BITMAP_COUNT:I = 0x180

.field public static final MAX_BITMAP_TOTAL_SIZE:I

.field private static final MB:J = 0x100000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/BitmapCounterProvider;->getMaxSizeHardCap()I

    move-result v0

    sput v0, Lcom/alibaba/doraemon/image/memory/BitmapCounterProvider;->MAX_BITMAP_TOTAL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/alibaba/doraemon/image/memory/BitmapCounter;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;

    const/16 v1, 0x180

    sget v2, Lcom/alibaba/doraemon/image/memory/BitmapCounterProvider;->MAX_BITMAP_TOTAL_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/image/memory/BitmapCounter;-><init>(II)V

    return-object v0
.end method

.method private static getMaxSizeHardCap()I
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 28
    .local v0, "maxMemory":I
    int-to-long v2, v0

    const-wide/32 v4, 0x1000000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 29
    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x3

    .line 31
    :goto_0
    return v1

    :cond_0
    div-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method
