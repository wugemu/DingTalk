.class Lcom/squareup/okhttp/ws/WebSocketCall$1;
.super Ljava/lang/Object;
.source "WebSocketCall.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/ws/WebSocketCall;->enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

.field final synthetic val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/ws/WebSocketCall;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iput-object p2, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    .line 127
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iget-object v2, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-static {v1, p1, v2}, Lcom/squareup/okhttp/ws/WebSocketCall;->access$000(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    goto :goto_0
.end method
