.class final Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;
.super Ljava/lang/Object;
.source "HandlerThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;
    }
.end annotation


# static fields
.field private static sLoopThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

.field private static sWriteLogThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    const-string/jumbo v1, "loop"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->sLoopThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    .line 9
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    const-string/jumbo v1, "writer"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->sWriteLogThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/InstantiationError;

    const-string/jumbo v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimerThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->sLoopThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getWriteLogThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->sWriteLogThread:Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory$HandlerThreadWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
