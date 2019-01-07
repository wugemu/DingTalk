.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;
.super Landroid/content/BroadcastReceiver;
.source "DingListFragmentImplV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

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
    .line 787
    const-string/jumbo v2, "com.workapp.ding.choose.mode.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    const-string/jumbo v2, "intent_key_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 789
    .local v0, "seed":J
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->m(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 798
    .end local v0    # "seed":J
    :cond_0
    :goto_0
    return-void

    .line 793
    .restart local v0    # "seed":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;I)I

    .line 794
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 795
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c()V

    .line 796
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Laxs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->n(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->o(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lbiz;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    goto :goto_0
.end method
