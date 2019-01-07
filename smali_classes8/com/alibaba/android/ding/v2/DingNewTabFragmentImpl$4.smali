.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "DingNewTabFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

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

    .line 426
    const-string/jumbo v2, "com.workapp.ding.filter.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string/jumbo v2, "action_set_current_filter"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    const-string/jumbo v2, "key_set_current_filter"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, "filter":I
    sget-object v2, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 432
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 433
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 441
    .local v0, "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    goto :goto_0

    .line 434
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :cond_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 436
    if-ne v1, v6, :cond_3

    .line 437
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .restart local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    goto :goto_1

    .line 439
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    :cond_3
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .restart local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    goto :goto_1

    .line 442
    .end local v0    # "currentDingTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .end local v1    # "filter":I
    :cond_4
    const-string/jumbo v2, "com.workapp.ding.new.tab.focus.and.recycle.hide.tips"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 443
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    .line 444
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0

    .line 445
    :cond_5
    const-string/jumbo v2, "com.workapp.ding.focus.and.recycle.hide.tips"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    .line 1464
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    .line 448
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$4;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->m(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    move-result-object v2

    .line 1645
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0
.end method
