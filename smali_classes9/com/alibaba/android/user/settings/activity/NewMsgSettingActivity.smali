.class public Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NewMsgSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lfwn;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lfwn;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v3}, Lfwn;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lfwn;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2, v3}, Lfwn;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-static {}, Lcms;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    sget v2, Lezg$h;->toggle_device_adapt:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_0
    return-void

    .line 255
    :cond_0
    sget v2, Lezg$h;->tc_device_adapt:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->G:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getIndicatorView()Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 263
    sget v2, Lezg$h;->tv_device_adapt_desc:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, "descTv":Landroid/widget/TextView;
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isHuaweiRom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_huawei:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 266
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_huawei:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    :try_start_0
    const-string/jumbo v2, "@lAHPACOG82D1z-VuzIw"

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 295
    .local v1, "url":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 297
    const-string/jumbo v2, "setting_msgnotice_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcof;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_oppo:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 269
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_oppo:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :cond_2
    invoke-static {}, Lcof;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_vivo:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 272
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_vivo:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {}, Lcof;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_samsung:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 275
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_samsung:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 276
    :cond_4
    invoke-static {}, Lcof;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_letv:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 278
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_letv:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 279
    :cond_5
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isXiaomiRom()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 280
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_xiaomi:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 281
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lezg$l;->dt_device_adapt_name_xiaomi:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 284
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v3, Lezg$l;->dt_device_adapt_entry_default:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 285
    sget v2, Lezg$l;->dt_device_adapt_entry_desc:I

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 293
    :catch_0
    move-exception v2

    const-string/jumbo v1, "https://static.dingtalk.com/media/lAHPACOG82D1z-VuzIw_140_110.gif"

    .restart local v1    # "url":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .prologue
    const/4 v3, 0x0

    .line 50
    .line 2307
    const-string/jumbo v0, "setting_msgnotice_deviceadapt_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 2309
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->G:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 3033
    if-eqz p0, :cond_0

    .line 3042
    :try_start_0
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    :try_start_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3044
    :try_start_2
    invoke-static {}, Lcms;->b()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 3045
    :try_start_3
    invoke-static {}, Lcms;->n()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 3047
    :try_start_4
    invoke-static {}, Lcof;->i()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 3052
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 3053
    const-string/jumbo v7, "https://tms.dingtalk.com/markets/dingtalk/android/msg/help?"

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3054
    const-string/jumbo v7, "brand="

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v7, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3055
    const-string/jumbo v5, "&"

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v7, "model="

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3056
    const-string/jumbo v1, "&"

    invoke-virtual {v6, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v5, "rom_version="

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    if-nez v2, :cond_3

    const-string/jumbo v1, ""

    :goto_3
    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3057
    const-string/jumbo v1, "&"

    invoke-virtual {v6, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "os_version="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    if-nez v4, :cond_4

    const-string/jumbo v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3058
    const-string/jumbo v1, "&"

    invoke-virtual {v6, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "locale="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3060
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void

    .line 3048
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    move-object v0, v3

    .line 3049
    :goto_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_0

    .line 3054
    :cond_1
    invoke-static {v5}, Lfxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 3055
    :cond_2
    invoke-static {v1}, Lfxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3056
    :cond_3
    invoke-static {v2}, Lfxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 3057
    :cond_4
    invoke-static {v4}, Lfxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 3058
    :cond_5
    invoke-static {v0}, Lfxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 3048
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v4, v5

    move-object v5, v0

    move-object v0, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v5, v0

    move-object v0, v3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v3

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v8

    goto :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1075
    sget v0, Lezg$j;->activity_settings_new_msg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->setContentView(I)V

    .line 1077
    sget v0, Lezg$h;->toggle_cell_receive_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v3

    invoke-virtual {v3}, Lfwn;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1109
    sget v0, Lezg$h;->toggle_cell_receive_notice_response:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->k:Landroid/view/View;

    .line 1110
    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v0

    invoke-virtual {v0}, Lfwn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :goto_0
    sget v0, Lezg$h;->toggle_cell_show_notification_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v3

    invoke-virtual {v3}, Lfwn;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1143
    sget v0, Lezg$h;->im_sound_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    invoke-static {v5}, Lfwn;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;I)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    sget v0, Lezg$h;->ding_sound_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    invoke-static {v4}, Lfwn;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;I)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    sget v0, Lezg$h;->special_sound_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    invoke-static {v6}, Lfwn;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;

    invoke-direct {v3, p0, v6}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;I)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    sget v0, Lezg$h;->at_sound_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    const/4 v3, 0x4

    invoke-static {v3}, Lfwn;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;I)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    sget v0, Lezg$h;->redpacket_sound_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1160
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lfwn;->i()Lfwn;

    const/4 v3, 0x5

    invoke-static {v3}, Lfwn;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;I)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    sget v0, Lezg$h;->ll_toggle_cell_gcm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->a:Landroid/widget/LinearLayout;

    .line 1165
    sget v0, Lezg$h;->toggle_cell_gcm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 1175
    invoke-static {p0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportFCM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->isFromChina()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_xpn_fcm_zh_open"

    .line 2083
    invoke-virtual {v0, v3, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1175
    if-eqz v0, :cond_3

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1177
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "fcm_zh_open"

    invoke-virtual {v0, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    const-string/jumbo v3, "1"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1168
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->b()V

    .line 1170
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->c()V

    .line 2197
    invoke-static {}, Lcpz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    sget v0, Lezg$h;->cell_goto_system_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    new-instance v1, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1160
    goto/16 :goto_1

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 302
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 303
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 304
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->b()V

    .line 224
    return-void
.end method
