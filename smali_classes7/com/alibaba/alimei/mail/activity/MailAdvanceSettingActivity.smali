.class public Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailAdvanceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:[Landroid/widget/TextView;

.field private i:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)Lxv;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            ")",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(IZLjava/lang/String;I)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "sync2Server"    # Z
    .param p3, "selectedServerId"    # Ljava/lang/String;
    .param p4, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 131
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v2, "MailAdvanceSettingActivity"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "folderApi not found"

    invoke-static {v2, v3, v4}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->h:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->h:[Landroid/widget/TextView;

    aget-object v1, v2, p1

    .line 138
    .local v1, "textView":Landroid/widget/TextView;
    if-nez p2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->i:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->i:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)Lxv;

    move-result-object v2

    invoke-interface {v0, p4, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByType(ILxv;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->i:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)Lxv;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByServerId(Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    const/16 v4, 0x64

    if-ne p1, v4, :cond_1

    if-eqz p3, :cond_1

    .line 153
    const-string/jumbo v4, "mail_folder_type"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "folderType":I
    const-string/jumbo v4, "mail_folder_sync2server"

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 155
    .local v3, "sync2Sever":Z
    const-string/jumbo v4, "mail_folder_type_user_define_serverid"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "selectedServerId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 158
    .local v1, "index":I
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    .line 159
    const/4 v1, 0x1

    .line 164
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(IZLjava/lang/String;I)V

    .line 166
    .end local v0    # "folderType":I
    .end local v1    # "index":I
    .end local v2    # "selectedServerId":Ljava/lang/String;
    .end local v3    # "sync2Sever":Z
    :cond_1
    return-void

    .line 160
    .restart local v0    # "folderType":I
    .restart local v1    # "index":I
    .restart local v2    # "selectedServerId":Ljava/lang/String;
    .restart local v3    # "sync2Sever":Z
    :cond_2
    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    .line 161
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->c:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 174
    const-string/jumbo v1, "mail_folder_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    :cond_0
    :goto_0
    const-string/jumbo v1, "/page/mail_imap_folder_behavior"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 182
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->b:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 176
    const-string/jumbo v1, "mail_folder_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->d:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 178
    const-string/jumbo v1, "mail_folder_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1069
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 46
    :goto_0
    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->finish()V

    .line 1086
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1071
    goto :goto_0

    .line 51
    :cond_2
    sget v0, Laxo$g;->activity_mail_advance_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->setContentView(I)V

    .line 52
    sget v0, Laxo$f;->draft_box_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->b:Landroid/view/View;

    .line 53
    sget v0, Laxo$f;->sent_box_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->c:Landroid/view/View;

    .line 54
    sget v0, Laxo$f;->deleted_box_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->d:Landroid/view/View;

    .line 55
    sget v0, Laxo$f;->draft_box_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->e:Landroid/widget/TextView;

    .line 56
    sget v0, Laxo$f;->sent_box_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->f:Landroid/widget/TextView;

    .line 57
    sget v0, Laxo$f;->delete_box_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->g:Landroid/widget/TextView;

    .line 59
    new-array v0, v6, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->e:Landroid/widget/TextView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->f:Landroid/widget/TextView;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->g:Landroid/widget/TextView;

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->h:[Landroid/widget/TextView;

    .line 60
    new-array v0, v6, [I

    sget v3, Laxo$i;->alm_cmail_mailbox_name_display_drafts:I

    aput v3, v0, v1

    sget v3, Laxo$i;->alm_cmail_mailbox_name_display_sent:I

    aput v3, v0, v2

    sget v2, Laxo$i;->alm_cmail_mailbox_name_display_trash:I

    aput v2, v0, v4

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->i:[I

    .line 1075
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v2

    .line 1083
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 1085
    if-eqz v2, :cond_3

    move v0, v1

    .line 1086
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1087
    aget v1, v3, v0

    .line 1089
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getSelectedFolderByType(I)Ljava/lang/String;

    move-result-object v4

    .line 1090
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getFolderSync2Server(I)Z

    move-result v5

    .line 1092
    invoke-direct {p0, v0, v5, v4, v1}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(IZLjava/lang/String;I)V

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1095
    :cond_3
    const-string/jumbo v0, "MailAdvanceSettingActivity"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "settingApi not found"

    invoke-static {v0, v1, v2}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1083
    nop

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
    .end array-data
.end method
