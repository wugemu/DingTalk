.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;
.super Landroid/content/BroadcastReceiver;
.source "DingTabFragmentImplV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 454
    const-string/jumbo v2, "com.workapp.ding.filter.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(I)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string/jumbo v2, "action_set_current_filter"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const-string/jumbo v2, "key_set_current_filter"

    const/4 v3, 0x7

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 458
    .local v0, "filter":I
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "pKey":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;I)V

    .line 460
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    .line 461
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(I)V

    goto :goto_0
.end method
