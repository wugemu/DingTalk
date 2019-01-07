.class public Lcom/ut/mini/core/UTSendLogDelegate;
.super Ljava/lang/Object;
.source "UTSendLogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;
    }
.end annotation


# static fields
.field private static final SEND_LOG_HANDLER_MSG_ID:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 15
    iput-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandler:Landroid/os/Handler;

    .line 16
    iput-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/core/UTSendLogDelegate;)Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/core/UTSendLogDelegate;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    return-object v0
.end method


# virtual methods
.method public send(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    const-string/jumbo v1, "_sls"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string/jumbo v1, "_sls"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    invoke-interface {v1, p1}, Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;->onLogArrived(Ljava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, "lMessage":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSendLogListener(Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;)V
    .locals 0
    .param p1, "aListener"    # Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mListener:Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;

    .line 45
    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "UT-INVOKE-ASYNC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iget-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Lcom/ut/mini/core/UTSendLogDelegate$1;

    iget-object v1, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/core/UTSendLogDelegate$1;-><init>(Lcom/ut/mini/core/UTSendLogDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ut/mini/core/UTSendLogDelegate;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method
