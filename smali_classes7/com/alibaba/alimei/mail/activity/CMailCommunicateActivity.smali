.class public Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailCommunicateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/ProgressBar;

.field protected d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/alimei/mail/widget/CommonListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lacv;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b:Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->c:Landroid/widget/ProgressBar;

    .line 99
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->d:Landroid/widget/TextView;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->l:I

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->n:I

    return p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "tab"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->l:I

    if-ne p1, v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->l:I

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_1
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->n:I

    .line 248
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->m:Z

    .line 249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0}, Lacv;->c()V

    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0}, Lacv;->d()V

    .line 251
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b()V

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->o:I

    goto :goto_1

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 237
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->o:I

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 243
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->o:I

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 39
    .line 11336
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    const/4 v1, 0x1

    .line 39
    .line 11395
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    .line 11396
    if-nez p1, :cond_1

    .line 11397
    :goto_0
    if-nez p3, :cond_0

    .line 11398
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_2

    move v0, v1

    .line 11399
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setFootViewVisible(Z)V

    .line 11401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    .line 12363
    iput-boolean v1, v0, Lacv;->i:Z

    .line 11402
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    .line 12367
    iput-object v1, v0, Lacv;->j:Ljava/lang/String;

    .line 11403
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->m:Z

    if-eqz v0, :cond_3

    .line 11404
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0, p1}, Lacv;->c(Ljava/util/List;)V

    .line 11409
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->c()V

    .line 39
    return-void

    .line 11396
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    goto :goto_0

    .line 11398
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 11406
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 276
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    .line 10413
    iget-object v4, v3, Lcom/alibaba/alimei/mail/widget/CommonListView;->c:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10414
    iget-object v4, v3, Lcom/alibaba/alimei/mail/widget/CommonListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 10415
    iget-object v3, v3, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 277
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V

    .line 321
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-static {v3}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 322
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_2

    .line 323
    const/4 v2, 0x3

    .line 324
    .local v2, "searchType":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->l:I

    if-ne v3, v4, :cond_1

    .line 325
    const/4 v2, 0x4

    .line 329
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v4}, Lacv;->getCount()I

    move-result v4

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalMailByPage(Ljava/lang/String;IILxv;)V

    .line 333
    .end local v2    # "searchType":I
    :goto_1
    return-void

    .line 326
    .restart local v2    # "searchType":I
    :cond_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->l:I

    if-ne v3, v4, :cond_0

    .line 327
    const/4 v2, 0x7

    goto :goto_0

    .line 331
    .end local v2    # "searchType":I
    :cond_2
    const-string/jumbo v3, "CMailCommunicateActivity"

    const-string/jumbo v4, "searchFromLocal fail for mailApi is null"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->n:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 211
    .local v0, "id":I
    sget v1, Laxo$f;->from:I

    if-ne v1, v0, :cond_1

    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(I)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget v1, Laxo$f;->to:I

    if-ne v1, v0, :cond_2

    .line 214
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(I)V

    goto :goto_0

    .line 215
    :cond_2
    sget v1, Laxo$f;->commulicate:I

    if-ne v1, v0, :cond_0

    .line 216
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1145
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    .line 1146
    const-string/jumbo v3, "target_email"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 130
    :goto_0
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->finish()V

    .line 132
    const-string/jumbo v0, "CMailCommunicateActivity"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "accountName: "

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", targetMail: "

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1148
    goto :goto_0

    .line 136
    :cond_1
    sget v0, Laxo$g;->cmail_activity_communicate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->setContentView(I)V

    .line 1152
    sget v0, Laxo$f;->from:I

    .line 1372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->h:Landroid/view/View;

    .line 1153
    sget v0, Laxo$f;->to:I

    .line 2372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1153
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->i:Landroid/view/View;

    .line 1154
    sget v0, Laxo$f;->commulicate:I

    .line 3372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1154
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->j:Landroid/view/View;

    .line 1155
    sget v0, Laxo$f;->list_view:I

    .line 4372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1155
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CommonListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    .line 1157
    sget v0, Laxo$g;->cmail_fragment_mail_search_footer2:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    const v3, 0x1020014

    .line 4376
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b:Landroid/widget/TextView;

    .line 1159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    const v3, 0x102000d

    .line 5376
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->c:Landroid/widget/ProgressBar;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    const v3, 0x1020006

    .line 6376
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1160
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->d:Landroid/widget/TextView;

    .line 1161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7169
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    .line 1163
    if-eqz v0, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    .line 7388
    iget-object v0, v0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 8173
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8174
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8176
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8177
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setCommonListener(Lcom/alibaba/alimei/mail/widget/CommonListView$a;)V

    .line 8196
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 8197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Laxo$i;->dt_cmail_communicate_mail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 8199
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b(Z)V

    .line 8200
    new-instance v0, Lacv;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    .line 8201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->g:Lcom/alibaba/alimei/mail/widget/CommonListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    .line 8367
    iput-object v3, v0, Lacv;->j:Ljava/lang/String;

    .line 8203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    .line 9363
    iput-boolean v1, v0, Lacv;->i:Z

    .line 8204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b:Landroid/widget/TextView;

    sget v3, Laxo$i;->mail_search_from_server:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8205
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(I)V

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 10340
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10341
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10342
    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V

    .line 10389
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->m:Z

    .line 10390
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->f:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->o:I

    const/16 v3, 0x14

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->n:I

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchMailFromServer(Ljava/lang/String;IIILxv;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 263
    .local v7, "object":Ljava/lang/Object;
    instance-of v0, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_0

    move-object v6, v7

    .line 264
    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 266
    .local v6, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v0, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-static {p0, v0, v4, v4}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 267
    iget-boolean v0, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v0, :cond_0

    .line 268
    iput-boolean v3, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 269
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->k:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 270
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-interface {v0, v3, v4, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method
