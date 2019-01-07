.class public Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailDownloadDetailConfigActivity.java"

# interfaces
.implements Lsi$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/mail/activity/MailBaseActivity;",
        "Lsi$a",
        "<",
        "Lafn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsi",
            "<",
            "Lafn;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    .line 4131
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    .line 5112
    packed-switch p1, :pswitch_data_0

    .line 5119
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laxo$i;->dt_cmail_never_download:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4131
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void

    .line 5114
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laxo$i;->dt_cmail_download_only_in_wifi:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5116
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laxo$i;->dt_cmail_download_in_wifi_and_mobile_net:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic a(Lrr;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v3, Laxo$g;->cmail_activity_download_detail_config:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->setContentView(I)V

    .line 49
    sget v3, Laxo$f;->list_view:I

    .line 1418
    invoke-static {p0, v3}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 49
    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->a:Landroid/widget/ListView;

    .line 50
    new-instance v3, Lsi;

    sget v7, Laxo$g;->cmail_single_choice_item:I

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->a:Landroid/widget/ListView;

    invoke-direct {v3, p0, v7, v8}, Lsi;-><init>(Landroid/content/Context;ILandroid/widget/ListView;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    .line 52
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    .line 53
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x2

    invoke-direct {v0, v3, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 56
    .local v0, "footerParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Laxo$d;->cmail_dimen_16_dp:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    .local v1, "paddingLeftAndRight":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Laxo$d;->cmail_dimen_8_dp:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 59
    .local v2, "paddingTopAndBottom":I
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxo$c;->ui_common_content_fg_color_alpha_28:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->a:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->a:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    .line 2117
    iput-object p0, v3, Lsi;->e:Lsi$a;

    .line 3072
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v3, :cond_0

    .line 3073
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v7, Laxo$i;->dt_cmail_settings_mail_detail_download:I

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 3076
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3077
    sget v7, Laxo$i;->dt_cmail_only_wifi:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lafn;->a(ILjava/lang/String;)Lafn;

    move-result-object v7

    .line 3078
    sget v8, Laxo$i;->dt_cmail_wifi_and_mobile_net:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lafn;->a(ILjava/lang/String;)Lafn;

    move-result-object v8

    .line 3079
    sget v9, Laxo$i;->dt_cmail_never:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lafn;->a(ILjava/lang/String;)Lafn;

    move-result-object v3

    .line 3080
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    const/4 v10, 0x3

    new-array v10, v10, [Lafn;

    aput-object v7, v10, v4

    aput-object v8, v10, v5

    aput-object v3, v10, v6

    invoke-virtual {v9, v10}, Lsi;->a([Ljava/lang/Object;)V

    .line 3082
    const/4 v3, 0x0

    invoke-static {v3}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v3

    .line 3084
    if-eqz v3, :cond_1

    .line 3085
    invoke-interface {v3}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getAutoDownloadMailDetailStatus()I

    move-result v3

    .line 3096
    :goto_0
    packed-switch v3, :pswitch_data_0

    move v3, v6

    .line 3091
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    invoke-virtual {v4, v3}, Lsi;->b(I)V

    .line 69
    return-void

    .line 3087
    :cond_1
    const-string/jumbo v3, "CMailDownloadDetailConfigActivity"

    const-string/jumbo v7, "getAutoDownloadMailDetailStatus fail for settingApi is null"

    invoke-static {v3, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    goto :goto_0

    :pswitch_0
    move v3, v4

    .line 3099
    goto :goto_1

    :pswitch_1
    move v3, v5

    .line 3102
    goto :goto_1

    .line 3096
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 148
    invoke-static {v2}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v0

    .line 149
    .local v0, "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    .line 3109
    iget v1, v1, Lsi;->a:I

    .line 150
    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/SettingApi;->setAutoDownloadMailDetail(ILxv;)V

    .line 151
    const-string/jumbo v1, "CMailDownloadDetailConfigActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setting auto download mail status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDownloadDetailConfigActivity;->b:Lsi;

    .line 4109
    iget v3, v3, Lsi;->a:I

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string/jumbo v1, "CMailDownloadDetailConfigActivity"

    const-string/jumbo v2, "setting auto download mail detail fail for settingApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
