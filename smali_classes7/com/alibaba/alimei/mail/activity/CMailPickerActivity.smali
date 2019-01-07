.class public Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailPickerActivity.java"


# instance fields
.field a:Lacv;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 35
    .line 3166
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3172
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    return-void

    .line 3170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v1, Laxo$g;->alm_cmail_activity_mail_picker:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->setContentView(I)V

    .line 82
    invoke-static {}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h()V

    .line 83
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Laxo$i;->alm_cmail_loading_mails:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "mail_related"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->c:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b:Ljava/lang/String;

    .line 2112
    :cond_0
    sget v1, Laxo$f;->layout_bottom:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->g:Landroid/widget/RelativeLayout;

    .line 2113
    sget v1, Laxo$f;->right_operate:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->h:Landroid/widget/TextView;

    .line 2114
    sget v1, Laxo$f;->tv_send_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->i:Landroid/widget/TextView;

    .line 2115
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    .line 2116
    new-instance v1, Lacv;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    .line 2117
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    const/4 v2, 0x1

    .line 2241
    iput v2, v1, Lacv;->b:I

    .line 2118
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    .line 2492
    iput-boolean v3, v1, Lacv;->g:Z

    .line 2119
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    const/16 v2, 0x9

    .line 2500
    iput v2, v1, Lacv;->k:I

    .line 2120
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2122
    sget v1, Laxo$f;->list_empty_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 2123
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Laxo$e;->alm_cmail_empty_icon:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 2124
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Laxo$i;->alm_cmail_no_mails:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 2125
    sget v1, Laxo$f;->progressContainer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->e:Landroid/view/View;

    .line 2126
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2127
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2148
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2149
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2150
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2151
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3160
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3161
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3162
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->c:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryRelatedMails(Ljava/lang/String;Lxv;)V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 178
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 183
    return-void
.end method
