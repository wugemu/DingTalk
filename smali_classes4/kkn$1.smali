.class final Lkkn$1;
.super Lmtopsdk/common/util/AsyncServiceBinder;
.source "XState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkkn;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmtopsdk/common/util/AsyncServiceBinder",
        "<",
        "Lkko;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 39
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/IInterface;>;"
    .local p2, "x1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-direct {p0, p1, p2}, Lmtopsdk/common/util/AsyncServiceBinder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final afterAsyncBind()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lkkn$1$1;

    invoke-direct {v0, p0}, Lkkn$1$1;-><init>(Lkkn$1;)V

    .line 49
    .local v0, "syncTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    return-void
.end method
