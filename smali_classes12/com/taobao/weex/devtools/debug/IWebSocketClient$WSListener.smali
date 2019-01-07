.class public interface abstract Lcom/taobao/weex/devtools/debug/IWebSocketClient$WSListener;
.super Ljava/lang/Object;
.source "IWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/debug/IWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WSListener"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onOpen()V
.end method
