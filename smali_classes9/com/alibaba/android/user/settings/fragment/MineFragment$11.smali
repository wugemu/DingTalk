.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "MineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->F()Z

    move-result v13

    if-nez v13, :cond_0

    if-nez p2, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v13, "pref_key_recommend_info_first_show_"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto :goto_0

    .line 1377
    :cond_2
    const-string/jumbo v13, "action_settings_entry_update"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->u(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto :goto_0

    .line 1379
    :cond_3
    const-string/jumbo v13, "com.workapp.org_employee_change"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v14}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->v(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto :goto_0

    .line 1382
    :cond_4
    const-string/jumbo v13, "dingCardSettingUpdated"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .line 1385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->v(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto :goto_0

    .line 1386
    :cond_5
    const-string/jumbo v13, "action_config_switch_key_ready"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, "action_config_switch_work_circle_entry_changed"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1388
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto/16 :goto_0

    .line 1389
    :cond_7
    const-string/jumbo v13, "intent_key_update_mine_found_red_dot"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1390
    const-string/jumbo v13, "intent_key_update_mine_found_red_dot_show_bool"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1391
    .local v8, "show":Z
    new-instance v12, Lcry;

    invoke-direct {v12}, Lcry;-><init>()V

    .line 1392
    .local v12, "viewObject":Lcry;
    sget-object v13, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v13

    .line 2047
    iput v13, v12, Lcry;->a:I

    .line 2055
    iput-boolean v8, v12, Lcry;->b:Z

    .line 1394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->x(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto/16 :goto_0

    .line 1395
    .end local v8    # "show":Z
    .end local v12    # "viewObject":Lcry;
    :cond_8
    const-string/jumbo v13, "CLOSE_RECOMMAND_GUIDE"

    invoke-static {v13, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1397
    const-string/jumbo v13, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "data":Ljava/lang/String;
    const-string/jumbo v13, "LIFECYCLE"

    invoke-static {v13}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v13}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v9

    .line 1399
    .local v9, "topActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isH5Activity(Landroid/app/Activity;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1400
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 1402
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1407
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    .line 1408
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "type"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1410
    .local v10, "type":Ljava/lang/String;
    const-string/jumbo v13, "self"

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1411
    const-string/jumbo v13, "type=self"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v15}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1437
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1438
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1412
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_a
    :try_start_1
    const-string/jumbo v13, "square"

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1413
    const-string/jumbo v13, "type=square"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v15}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 1414
    :cond_b
    const-string/jumbo v13, "f2f"

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1415
    const-string/jumbo v13, "type=f2f"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v15}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 1416
    :cond_c
    const-string/jumbo v13, "createcard"

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "type=self"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v13

    const-string/jumbo v14, "https://qr.dingtalk.com/page/my_connections.html"

    new-instance v15, Lcom/alibaba/android/user/settings/fragment/MineFragment$11$1;

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/android/user/settings/fragment/MineFragment$11$1;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$11;)V

    invoke-interface {v13, v14, v15}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 1426
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "type=square"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, ""

    const-string/jumbo v15, "pages/roomsquare/roomsquare"

    invoke-static {v13, v14, v15}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "type=f2f"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v13

    const-string/jumbo v14, "https://qr.dingtalk.com/exchange_namecard.html"

    invoke-interface {v13, v14}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1432
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "from=facetoface"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lflz;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1441
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "topActivity":Landroid/app/Activity;
    .end local v10    # "type":Ljava/lang/String;
    :cond_10
    const-string/jumbo v13, "action_settings_card_update"

    invoke-static {v1, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/namecard/widget/NameCardView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a()V

    goto/16 :goto_0

    .line 1443
    :cond_11
    const-string/jumbo v13, "action_name_card_update_avatar"

    invoke-static {v1, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1444
    const-string/jumbo v13, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1445
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 1446
    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1447
    .local v5, "mediaId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1449
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v13

    invoke-virtual {v13}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    .line 1450
    .local v7, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iput-object v5, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1453
    .end local v5    # "mediaId":Ljava/lang/String;
    .end local v7    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_12
    const-string/jumbo v13, "is not mediaId uri"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1455
    .end local v11    # "url":Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "com.workapp.PROFILE_NICK_NAME_CHANGED"

    invoke-static {v1, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1456
    const-string/jumbo v13, "newNick"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/namecard/widget/NameCardView;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/namecard/widget/NameCardView;

    move-result-object v13

    .line 2599
    if-nez v6, :cond_14

    .line 2600
    const-string/jumbo v6, ""

    .line 2602
    .end local v6    # "nick":Ljava/lang/String;
    :cond_14
    iget-object v14, v13, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a:Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 2603
    iget-object v13, v13, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1461
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v14}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v13}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->z(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    goto/16 :goto_0
.end method
