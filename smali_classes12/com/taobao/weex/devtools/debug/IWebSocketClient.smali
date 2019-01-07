.class public interface abstract Lcom/taobao/weex/devtools/debug/IWebSocketClient;
.super Ljava/lang/Object;
.source "IWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/debug/IWebSocketClient$WSListener;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;Lcom/taobao/weex/devtools/debug/IWebSocketClient$WSListener;)V
.end method

.method public abstract isOpen()Z
.end method

.method public abstract sendMessage(ILjava/lang/String;)V
.end method
