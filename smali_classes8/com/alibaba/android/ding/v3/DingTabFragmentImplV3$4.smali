.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;
.super Landroid/content/BroadcastReceiver;
.source "DingTabFragmentImplV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    const-string/jumbo v2, "com.workapp.ding.filter.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string/jumbo v2, "action_set_current_filter"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    const-string/jumbo v2, "key_set_current_filter"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "filter":I
    sget-object v2, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 431
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 432
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 440
    .local v0, "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    goto :goto_0

    .line 433
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :cond_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 435
    if-ne v1, v6, :cond_3

    .line 436
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .restart local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    goto :goto_1

    .line 438
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :cond_3
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .restart local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    goto :goto_1

    .line 441
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .end local v1    # "filter":I
    :cond_4
    const-string/jumbo v2, "com.workapp.ding.new.tab.focus.and.recycle.hide.tips"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 442
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    .line 443
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0

    .line 444
    :cond_5
    const-string/jumbo v2, "com.workapp.ding.focus.and.recycle.hide.tips"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    .line 1464
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    .line 447
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v2}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    .line 1645
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0
.end method
