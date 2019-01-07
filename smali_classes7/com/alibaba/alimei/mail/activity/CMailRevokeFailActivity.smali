.class public Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailRevokeFailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/alimei/mail/widget/CommonListView;

.field private d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1073
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a:Ljava/lang/String;

    .line 1074
    const-string/jumbo v2, "mail_server_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->b:Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    if-nez v0, :cond_1

    .line 59
    const-string/jumbo v0, "CMailRevokeFailActivity"

    const-string/jumbo v1, "initArgs fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->finish()V

    .line 1141
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1076
    goto :goto_0

    .line 64
    :cond_1
    sget v0, Laxo$g;->activity_revoke_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->setContentView(I)V

    .line 1080
    sget v0, Laxo$f;->list:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/CommonListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->c:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b(Z)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_cmail_view_revoke_status:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1101
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)V

    .line 1139
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 1140
    if-eqz v1, :cond_3

    .line 1141
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryRevokeMailStatus(Ljava/lang/String;Lxv;)V

    goto :goto_1

    .line 1143
    :cond_3
    const-string/jumbo v0, "CMailRevokeFailActivity"

    const-string/jumbo v1, "queryRevokeStatus fail for obtain mailAdditionalApi fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 149
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->d:Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    invoke-virtual {v3, p3}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 155
    check-cast v1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;

    .line 156
    .local v1, "item":Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->email:Ljava/lang/String;

    .line 157
    .local v0, "email":Ljava/lang/String;
    invoke-static {p0, v0}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
