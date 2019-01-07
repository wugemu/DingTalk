.class public Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSettingsMySubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Laeg;

.field private d:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Laeg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->c:Laeg;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
    .param p1, "x1"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object p1
.end method

.method private a(Laeg;)V
    .locals 4
    .param p1, "dataSource"    # Laeg;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Laeg;->b()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lzt;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->b(Ljava/util/List;)V

    .line 130
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lzt;>;"
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lzt;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Laeg;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
    .param p1, "x1"    # Laeg;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Laeg;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lzt;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
    .param p1, "x1"    # Lzt;

    .prologue
    .line 32
    .line 2099
    if-eqz p1, :cond_0

    iget-object v0, p1, Lzt;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2510
    const-string/jumbo v0, "mail_zhishixueyuanv2_Unsubscribe"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 2103
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2104
    iget-object v1, p1, Lzt;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2106
    sget v1, Laxo$i;->dt_mail_cainiao_confrim_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2107
    sget v1, Laxo$i;->dt_mail_cainiao_confrim_ok:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lzt;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2114
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 32
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Laxo$g;->alm_cmail_fragment_mail_settings_my_subscribe:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->setContentView(I)V

    .line 51
    sget v0, Laxo$f;->my_subscribe_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a:Landroid/widget/ListView;

    .line 52
    sget v0, Laxo$f;->no_subscribe_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->b:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    sget v1, Laxo$g;->cmail_my_subscribe_cell_layout:I

    invoke-direct {v0, p0, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 2065
    invoke-static {}, Laeh;->a()Laeg;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->c:Laeg;

    .line 2067
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->c:Laeg;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Laeg;)V

    .line 2069
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->c:Laeg;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)V

    invoke-interface {v0, v1}, Laeg;->a(Lcma;)V

    .line 62
    return-void
.end method
