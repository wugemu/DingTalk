.class final Ldjg$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationChangeMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjg;


# direct methods
.method constructor <init>(Ldjg;)V
    .locals 0
    .param p1, "this$0"    # Ldjg;

    .prologue
    .line 62
    iput-object p1, p0, Ldjg$1;->a:Ldjg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    iget-object v1, p0, Ldjg$1;->a:Ldjg;

    invoke-static {v1}, Ldjg;->a(Ldjg;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 71
    :cond_1
    return-void
.end method
