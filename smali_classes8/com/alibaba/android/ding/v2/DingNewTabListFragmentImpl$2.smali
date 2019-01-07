.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "DingNewTabListFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 681
    const-string/jumbo v2, "com.workapp.ding.choose.mode.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    const-string/jumbo v2, "intent_key_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 684
    .local v0, "seed":J
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->l(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 693
    .end local v0    # "seed":J
    :cond_0
    :goto_0
    return-void

    .line 688
    .restart local v0    # "seed":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;I)I

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 690
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f()V

    .line 691
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Laxs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->n(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lbiz;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v5}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    goto :goto_0
.end method
