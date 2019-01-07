.class public abstract Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;
.super Ljava/lang/Object;
.source "ThreadBoundProxy.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/ThreadBound;


# instance fields
.field private final mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/common/ThreadBound;)V
    .locals 1
    .param p1, "enforcer"    # Lcom/taobao/weex/devtools/common/ThreadBound;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/common/ThreadBound;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    .line 25
    return-void
.end method


# virtual methods
.method public final checkThreadAccess()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/common/ThreadBound;->checkThreadAccess()Z

    move-result v0

    return v0
.end method

.method public final postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taobao/weex/devtools/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "c":Lcom/taobao/weex/devtools/common/UncheckedCallable;, "Lcom/taobao/weex/devtools/common/UncheckedCallable<TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/ThreadBound;->postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final postAndWait(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/ThreadBound;->postAndWait(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/common/ThreadBound;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/ThreadBound;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public final verifyThreadAccess()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/taobao/weex/devtools/common/ThreadBound;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/common/ThreadBound;->verifyThreadAccess()V

    .line 35
    return-void
.end method
