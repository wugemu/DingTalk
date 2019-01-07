.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->onClose(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iput p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$code:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->this$1:Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    iget v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$code:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;)V

    .line 75
    return-void
.end method
