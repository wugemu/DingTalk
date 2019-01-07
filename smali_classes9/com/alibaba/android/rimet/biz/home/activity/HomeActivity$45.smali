.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->b:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2443
    if-ltz p3, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_0

    .line 2444
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->a:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lejs$a;

    .line 2445
    .local v2, "item":Lejs$a;
    iget v4, v2, Lejs$a;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 2540
    .end local v2    # "item":Lejs$a;
    :cond_0
    :goto_0
    return-void

    .line 2447
    .restart local v2    # "item":Lejs$a;
    :sswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v6

    aget-object v5, v5, v6

    const-string/jumbo v6, "focus_dingtalk_share_click"

    invoke-interface {v4, v5, v6, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2448
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/projection/FocusInterface;->a(Landroid/content/Context;)V

    .line 2534
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 2453
    :sswitch_1
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 3022
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v6, "mainpage_scan_click"

    .line 3023
    invoke-interface {v4, v8, v6, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3024
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3025
    const-string/jumbo v6, "completed_back_to_target_action"

    const-string/jumbo v7, "com.workapp.vcard.camera.recognized"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2458
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v7}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v7

    aget-object v6, v6, v7

    const-string/jumbo v7, "mainpage_groupchat_create_click"

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2461
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "intent_key_show_invitation"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2463
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v6, "contact_create_team_on_conversation"

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2464
    const-string/jumbo v4, "intent_key_show_create_team_menu"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2467
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const-string/jumbo v6, "maipage_create"

    invoke-virtual {v4, v5, v6, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2473
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v7}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v7

    aget-object v6, v6, v7

    const-string/jumbo v7, "mainpage_addfriend_click"

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2475
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2476
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "show_header_f2f_create_group"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2477
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2482
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v6

    aget-object v5, v5, v6

    const-string/jumbo v6, "mainpage_meeting_click"

    invoke-interface {v4, v5, v6, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2484
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2507
    :sswitch_5
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 2508
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2507
    invoke-virtual {v4, v5, v6, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2512
    :sswitch_6
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v6

    aget-object v5, v5, v6

    const-string/jumbo v6, "exchange_namecard_click"

    invoke-interface {v4, v5, v6, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2513
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 2524
    :sswitch_7
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4, v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 2525
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2526
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->d()Z

    move-result v3

    .line 2527
    .local v3, "open":Z
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v7

    if-nez v3, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Z)V

    .line 2528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2529
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "opened"

    if-eqz v3, :cond_4

    const-string/jumbo v4, "off"

    :goto_3
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v7}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v8

    aget-object v7, v7, v8

    const-string/jumbo v8, "chat_focus_model_on_off"

    invoke-interface {v4, v7, v8, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2532
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Z)V

    goto/16 :goto_1

    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move v4, v6

    .line 2527
    goto :goto_2

    .line 2529
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v4, "on"

    goto :goto_3

    :cond_5
    move v5, v6

    .line 2532
    goto :goto_4

    .line 2445
    :sswitch_data_0
    .sparse-switch
        0x7f090b19 -> :sswitch_6
        0x7f0913e4 -> :sswitch_7
        0x7f0918bd -> :sswitch_0
        0x7f091ba0 -> :sswitch_5
        0x7f091d4b -> :sswitch_3
        0x7f091d4c -> :sswitch_2
        0x7f091d53 -> :sswitch_4
        0x7f09205c -> :sswitch_1
    .end sparse-switch
.end method
