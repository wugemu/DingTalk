.class Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 32
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$000(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "mtopsdk.AntiAttackHandlerImpl"

    const-string/jumbo v1, "waiting antiattack result time out!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-static {v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->access$100(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
