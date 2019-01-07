.class Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AntiAttackHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 51
    :try_start_0
    const-string/jumbo v1, "Result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "mtopsdk.AntiAttackHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onReceive]AntiAttack result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$300(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v2}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$200(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$000(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$300(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v2}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$200(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$000(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v2}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$300(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v3}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$200(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v2}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$000(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
