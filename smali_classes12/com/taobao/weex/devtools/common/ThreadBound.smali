.class public interface abstract Lcom/taobao/weex/devtools/common/ThreadBound;
.super Ljava/lang/Object;
.source "ThreadBound.java"


# virtual methods
.method public abstract checkThreadAccess()Z
.end method

.method public abstract postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taobao/weex/devtools/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract postAndWait(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract verifyThreadAccess()V
.end method
