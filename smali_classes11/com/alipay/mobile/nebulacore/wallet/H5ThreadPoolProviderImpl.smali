.class public Lcom/alipay/mobile/nebulacore/wallet/H5ThreadPoolProviderImpl;
.super Ljava/lang/Object;
.source "H5ThreadPoolProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ThreadPoolProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public submitOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    return-void
.end method
