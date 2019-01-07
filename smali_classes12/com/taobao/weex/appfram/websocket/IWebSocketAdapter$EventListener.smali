.class public interface abstract Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
.super Ljava/lang/Object;
.source "IWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onOpen()V
.end method
