.class Lorg/webrtc/utils/CpuMonitor$MovingAverage;
.super Ljava/lang/Object;
.source "CpuMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/CpuMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MovingAverage"
.end annotation


# instance fields
.field private circBuffer:[D

.field private circBufferIndex:I

.field private currentValue:D

.field private final size:I

.field private sum:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-gtz p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Size value in MovingAverage ctor should be positive."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 125
    :cond_0
    iput p1, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->size:I

    .line 126
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBuffer:[D

    .line 127
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBuffer:[D

    iget v3, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    .line 138
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBuffer:[D

    iget v1, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    aput-wide p1, v0, v1

    .line 139
    iput-wide p1, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->currentValue:D

    .line 140
    iget-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    .line 141
    iget v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    iget v1, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->size:I

    if-lt v0, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    .line 144
    :cond_0
    return-void
.end method

.method public getAverage()D
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    iget v2, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->size:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrent()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->currentValue:D

    return-wide v0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 130
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBuffer:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->circBufferIndex:I

    .line 132
    iput-wide v2, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->sum:D

    .line 133
    iput-wide v2, p0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->currentValue:D

    .line 134
    return-void
.end method
