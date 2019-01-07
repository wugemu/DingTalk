.class public Lcom/alibaba/alimei/mail/activity/MailSessionActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailSessionActivity.java"

# interfaces
.implements Ladq;


# instance fields
.field private a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

.field private b:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Ladr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->m:Ladr;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 237
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 5333
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1}, Lacv;->g()Z

    move-result v0

    .line 238
    .local v0, "isSelectAll":Z
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->h:Landroid/widget/TextView;

    sget v2, Laxo$i;->icon_checkbox_fill:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->i:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_common_cancel_select_all:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->j:Landroid/widget/TextView;

    sget v2, Laxo$i;->dd_cmail_select_mail_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->h:Landroid/widget/TextView;

    sget v2, Laxo$i;->icon_checkbox:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->cmail_color_e3e3e4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->i:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_mail_select_all:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 0
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .prologue
    .line 217
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;I)V
    .locals 0
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .param p2, "count"    # I

    .prologue
    .line 207
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laha;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "newMailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laha;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isEditor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 2
    .param p1, "isTop"    # Z
    .param p2, "firstVisibleItem"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 263
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isRemove"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 273
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l()Z

    move-result v0

    .line 275
    .local v0, "handle":Z
    if-eqz v0, :cond_0

    .line 280
    .end local v0    # "handle":Z
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Laxo$g;->alm_cmail_session_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mail_folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, p1, v1}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 1103
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1104
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    const-string/jumbo v2, "mail_cid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1106
    const-string/jumbo v3, "mail_subject"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1107
    const-string/jumbo v4, "mail_session_item_count"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1109
    sget v0, Laxo$f;->title_ll:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->c:Landroid/view/View;

    .line 1110
    sget v0, Laxo$f;->menu_back:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->e:Landroid/view/View;

    .line 1111
    sget v0, Laxo$f;->title:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->d:Landroid/widget/TextView;

    .line 1113
    sget v0, Laxo$f;->editor_layout:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->f:Landroid/view/View;

    .line 1114
    sget v0, Laxo$f;->select_all:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->g:Landroid/view/View;

    .line 1115
    sget v0, Laxo$f;->select_all_icon:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->h:Landroid/widget/TextView;

    .line 1116
    sget v0, Laxo$f;->select_all_text:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->i:Landroid/widget/TextView;

    .line 1117
    sget v0, Laxo$f;->select_count_des:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->j:Landroid/widget/TextView;

    .line 1118
    sget v0, Laxo$f;->cancel:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->k:Landroid/view/View;

    .line 1119
    sget v0, Laxo$f;->divider:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->l:Landroid/view/View;

    .line 1121
    if-nez v4, :cond_5

    .line 1122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->d:Landroid/widget/TextView;

    sget v4, Laxo$i;->mail_subject:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->e:Landroid/view/View;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->g:Landroid/view/View;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->k:Landroid/view/View;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 1130
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2108
    iput-object v4, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->n:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2109
    iget-object v4, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    if-eqz v4, :cond_2

    .line 2110
    iget-object v4, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->n:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v4, v0}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 3097
    iput-object v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->k:Ljava/lang/String;

    .line 3098
    iput-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l:Ljava/lang/String;

    .line 3099
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    if-eqz v1, :cond_3

    .line 3100
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/lang/String;)V

    .line 3102
    :cond_3
    iget-boolean v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->m:Z

    if-eqz v1, :cond_4

    .line 3103
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->j()V

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->m:Ladr;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Ladr;)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 3115
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->o:Ljava/lang/String;

    .line 1135
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1136
    sget v1, Laxo$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1137
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 97
    return-void

    .line 1124
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->d:Landroid/widget/TextView;

    sget v5, Laxo$i;->mail_subject_count:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 3267
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    if-eqz v1, :cond_0

    .line 4261
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 3268
    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->removeLoaderObserver(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;)V

    .line 3270
    :cond_0
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->r:Lyb;

    if-eqz v1, :cond_1

    .line 5085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 3271
    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->r:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 3274
    :cond_1
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    if-eqz v1, :cond_2

    .line 3275
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1}, Lacv;->c()V

    .line 5281
    :cond_2
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    .line 5282
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->g:Landroid/view/View;

    .line 5283
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 5284
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 5285
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->n:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 5286
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .line 5287
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->q:Landroid/os/Handler;

    .line 5288
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->r:Lyb;

    .line 189
    :cond_3
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 190
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 191
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->m:Ladr;

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 202
    return-void
.end method
