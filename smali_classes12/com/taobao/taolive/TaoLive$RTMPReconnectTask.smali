.class Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;
.super Ljava/util/TimerTask;
.source "TaoLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/TaoLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RTMPReconnectTask"
.end annotation


# instance fields
.field private retryInterval:I

.field private retryTimes:I

.field final synthetic this$0:Lcom/taobao/taolive/TaoLive;

.field public tl:Lcom/taobao/taolive/TaoLive;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/TaoLive;Lcom/taobao/taolive/TaoLive;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/TaoLive;
    .param p2, "tl"    # Lcom/taobao/taolive/TaoLive;
    .param p3, "retryTimes"    # I
    .param p4, "retryInterval"    # I

    .prologue
    .line 269
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->tl:Lcom/taobao/taolive/TaoLive;

    .line 271
    iput p3, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->retryTimes:I

    .line 272
    iput p4, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->retryInterval:I

    .line 273
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->tl:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->tl:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->reconnectServer()I

    .line 279
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->tl:Lcom/taobao/taolive/TaoLive;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$702(Lcom/taobao/taolive/TaoLive;Ljava/util/Timer;)Ljava/util/Timer;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->this$0:Lcom/taobao/taolive/TaoLive;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Reconnect to server, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->retryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "st connection, interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;->retryInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 282
    return-void
.end method
