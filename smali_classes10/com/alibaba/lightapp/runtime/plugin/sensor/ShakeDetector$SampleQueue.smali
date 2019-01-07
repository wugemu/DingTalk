.class Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SampleQueue"
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE:J = 0x1dcd6500L

.field private static final MIN_QUEUE_SIZE:I = 0x4

.field private static final MIN_WINDOW_SIZE:J = 0xee6b280L


# instance fields
.field private acceleratingCount:I

.field private newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

.field private oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

.field private final pool:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

.field private sampleCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->pool:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

    return-void
.end method


# virtual methods
.method add(JZ)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "accelerating"    # Z

    .prologue
    .line 140
    const-wide/32 v2, 0x1dcd6500

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->purge(J)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->pool:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->acquire()Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    move-result-object v0

    .line 143
    .local v0, "added":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    iput-wide p1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->timestamp:J

    .line 144
    iput-boolean p3, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->accelerating:Z

    .line 145
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 149
    :cond_0
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 150
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 151
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 154
    :cond_1
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    .line 155
    if-eqz p3, :cond_2

    .line 156
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 158
    :cond_2
    return-void
.end method

.method asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;>;"
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 191
    .local v1, "s":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    :goto_0
    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    goto :goto_0

    .line 195
    :cond_0
    return-object v0
.end method

.method clear()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 163
    .local v0, "removed":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 164
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->pool:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->release(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;)V

    goto :goto_0

    .line 166
    .end local v0    # "removed":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 167
    iput v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    .line 168
    iput v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 169
    return-void
.end method

.method isShaking()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->timestamp:J

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method purge(J)V
    .locals 7
    .param p1, "cutoff"    # J

    .prologue
    .line 172
    :goto_0
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iget-wide v2, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->timestamp:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 175
    .local v0, "removed":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    iget-boolean v1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->accelerating:Z

    if-eqz v1, :cond_0

    .line 176
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 178
    :cond_0
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->sampleCount:I

    .line 180
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 181
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->oldest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->newest:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->pool:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->release(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;)V

    goto :goto_0

    .line 186
    .end local v0    # "removed":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    :cond_2
    return-void
.end method
