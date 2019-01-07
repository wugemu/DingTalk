.class public final Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
.super Ljava/lang/Object;
.source "BarrierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/health/BarrierPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/health/BarrierPolicy;)V
    .locals 1
    .param p1, "base"    # Lcom/alibaba/doraemon/health/BarrierPolicy;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget v0, p1, Lcom/alibaba/doraemon/health/BarrierPolicy;->mask:I

    iput v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    .line 111
    return-void
.end method

.method private disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 2
    .param p1, "bit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    iget v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    .line 328
    return-object p0
.end method

.method private enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1
    .param p1, "bit"    # I

    .prologue
    .line 322
    iget v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    .line 323
    return-object p0
.end method


# virtual methods
.method public final build()Lcom/alibaba/doraemon/health/BarrierPolicy;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    iget v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->penaltyLog()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    .line 345
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/health/BarrierPolicy;

    iget v1, p0, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->mMask:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/health/BarrierPolicy;-><init>(ILcom/alibaba/doraemon/health/BarrierPolicy$1;)V

    return-object v0
.end method

.method public final disableCPUTimeRegBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 275
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableDoraemonThreadBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 302
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableImageBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableLargeSingleTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableLargeTotalTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disablePowerBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableRepeatOpenFileBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableRepeatTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableSocketBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableTBBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableThreadWhiteListBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 288
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final disableTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->disable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableAll()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 144
    const v0, 0x31f0f

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableCPUTimeRegBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 268
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableDebugDefault()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableSocketBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableLargeTotalTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableLargeSingleTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableRepeatTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableCPUTimeRegBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableThreadWhiteListBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enableDoraemonThreadBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableDoraemonThreadBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 295
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableGrayDefault()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final enableImageBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableLargeSingleTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableLargeTotalTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enablePowerBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableRepeatOpenFileBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableRepeatTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableSocketBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableTBBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableThreadWhiteListBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 281
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final enableTrafficBarrier()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final penaltyDeath()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final penaltyLog()Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;->enable(I)Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
