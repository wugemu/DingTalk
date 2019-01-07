.class Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/websocket/WebSocketModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string/jumbo v0, "WebSocketModule"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close session with instance id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    iget-object v2, v2, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->destroy()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 125
    return-void
.end method
