.class Lcom/squareup/okhttp/ws/WebSocketCall$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/ws/WebSocketCall;->createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

.field final synthetic val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/ws/WebSocketCall;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/ws/RealWebSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/ws/WebSocketCall;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->this$0:Lcom/squareup/okhttp/ws/WebSocketCall;

    iput-object p4, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .prologue
    .line 187
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    return-void
.end method
