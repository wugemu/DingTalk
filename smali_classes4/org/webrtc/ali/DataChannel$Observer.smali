.class public interface abstract Lorg/webrtc/ali/DataChannel$Observer;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onBufferedAmountChange(J)V
.end method

.method public abstract onMessage(Lorg/webrtc/ali/DataChannel$Buffer;)V
.end method

.method public abstract onStateChange()V
.end method
