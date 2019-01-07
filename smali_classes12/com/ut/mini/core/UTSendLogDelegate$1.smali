.class Lcom/ut/mini/core/UTSendLogDelegate$1;
.super Landroid/os/Handler;
.source "UTSendLogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/core/UTSendLogDelegate;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/core/UTSendLogDelegate;


# direct methods
.method constructor <init>(Lcom/ut/mini/core/UTSendLogDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ut/mini/core/UTSendLogDelegate$1;->this$0:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 31
    .local v0, "lLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate$1;->this$0:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-static {v1}, Lcom/ut/mini/core/UTSendLogDelegate;->access$000(Lcom/ut/mini/core/UTSendLogDelegate;)Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate$1;->this$0:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-static {v1}, Lcom/ut/mini/core/UTSendLogDelegate;->access$000(Lcom/ut/mini/core/UTSendLogDelegate;)Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;->onLogArrived(Ljava/util/Map;)V

    .line 38
    .end local v0    # "lLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate$1;->this$0:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-static {v1}, Lcom/ut/mini/core/UTSendLogDelegate;->access$000(Lcom/ut/mini/core/UTSendLogDelegate;)Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;->onLogArrived(Ljava/util/Map;)V

    goto :goto_0
.end method
