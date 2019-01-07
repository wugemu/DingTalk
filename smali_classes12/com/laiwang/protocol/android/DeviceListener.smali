.class public interface abstract Lcom/laiwang/protocol/android/DeviceListener;
.super Ljava/lang/Object;
.source "DeviceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;
    }
.end annotation


# virtual methods
.method public abstract deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V
.end method

.method public abstract deviceIsOpen()Z
.end method

.method public abstract deviceTokenInvalid()V
.end method

.method public abstract deviceTokenRequired()V
.end method
