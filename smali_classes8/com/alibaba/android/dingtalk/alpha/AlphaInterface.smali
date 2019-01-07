.class public interface abstract Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;
.super Ljava/lang/Object;
.source "AlphaInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract isAlphaRunning()Z
.end method

.method public abstract isForeground()Z
.end method

.method public abstract reset()V
.end method

.method public abstract sendData(I[B)V
.end method

.method public abstract startAloneTask()V
.end method

.method public abstract stopAloneTask()V
.end method

.method public abstract stopTimeoutTask()V
.end method
