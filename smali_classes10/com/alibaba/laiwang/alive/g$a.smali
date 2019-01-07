.class Lcom/alibaba/laiwang/alive/g$a;
.super Landroid/content/BroadcastReceiver;
.source "BasePushChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/alive/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic n:Lcom/alibaba/laiwang/alive/g;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/alive/g;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/g$a;->n:Lcom/alibaba/laiwang/alive/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    iget-object v1, p0, Lcom/alibaba/laiwang/alive/g$a;->n:Lcom/alibaba/laiwang/alive/g;

    sget-object v2, Lcom/alibaba/laiwang/alive/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/alive/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alibaba/laiwang/alive/g$a$1;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/alive/g$a$1;-><init>(Lcom/alibaba/laiwang/alive/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
