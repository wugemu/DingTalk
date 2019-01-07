.class public Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailListParticipantsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/alibaba/alimei/mail/widget/CommonListView$a;


# instance fields
.field private a:Lcom/alibaba/alimei/mail/widget/CommonListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lada;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private p:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lagx;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Laai;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 137
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    .line 139
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->l:Z

    .line 141
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->m:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 143
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 144
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 146
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->p:Lxv;

    .line 204
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->q:Lcma;

    .line 263
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    return p1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    const/4 v1, 0x0

    .line 2133
    iput-boolean v1, v0, Lada;->i:Z

    .line 2397
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lrx;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->q:Lcma;

    .line 2903
    const-string/jumbo v4, "MailRPC"

    const-string/jumbo v5, "listGroupMembersInfo"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    new-instance v4, Laaj;

    const/16 v5, 0x32

    invoke-direct {v4, v1, v2, v5}, Laaj;-><init>(Ljava/lang/String;II)V

    .line 2905
    new-instance v1, Lro$26;

    invoke-direct {v1, v0, v3}, Lro$26;-><init>(Lro;Lcma;)V

    .line 2920
    iget-object v0, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->listGroupMembersInfo(Laaj;Liyv;)V

    .line 4415
    :goto_0
    return-void

    .line 2400
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    .line 2401
    if-eqz v0, :cond_2

    .line 2402
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->p:Lxv;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailMembersInMailListByPage(Ljava/lang/String;ILxv;)V

    goto :goto_0

    .line 2404
    :cond_2
    const-string/jumbo v0, "CMailListParticipantsActivity"

    const-string/jumbo v1, "expandGroupMail fail for MailAdditionalApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    .line 3209
    iput-object v1, v0, Lada;->g:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    const/4 v1, 0x1

    .line 4133
    iput-boolean v1, v0, Lada;->i:Z

    .line 4413
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    .line 4414
    if-eqz v0, :cond_4

    .line 4415
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->k:I

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->p:Lxv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailParticipantsInMailList(Ljava/lang/String;Ljava/lang/String;ILxv;)V

    goto :goto_0

    .line 4417
    :cond_4
    const-string/jumbo v0, "CMailListParticipantsActivity"

    const-string/jumbo v1, "expandGroupMail fail for MailAdditionalApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b()V

    return-void
.end method


# virtual methods
.method public final j_()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->j:Z

    .line 480
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b()V

    .line 481
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 496
    .local v0, "id":I
    sget v3, Laxo$f;->back:I

    if-ne v3, v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->onBackPressed()V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    sget v3, Laxo$f;->close:I

    if-ne v3, v0, :cond_2

    .line 499
    const-string/jumbo v3, "CMailListParticipantsActivity"

    const-string/jumbo v4, "finish all self"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "action.maillist.participant.finish.self"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 503
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    sget v3, Laxo$f;->menu_call:I

    if-ne v3, v0, :cond_3

    .line 504
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v3}, Lada;->b()Ljava/util/List;

    move-result-object v2

    .line 506
    .local v2, "participantsModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v3, "maillist"

    .line 4934
    const-string/jumbo v4, "mail_meeting_click"

    invoke-static {v4, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lry;->a()Lry;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->m:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5, p0}, Lry;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/util/List;ILcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    goto :goto_0

    .line 512
    .end local v2    # "participantsModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    :cond_3
    sget v3, Laxo$f;->menu_ding:I

    if-ne v3, v0, :cond_0

    .line 513
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v3}, Lada;->b()Ljava/util/List;

    move-result-object v2

    .line 515
    .restart local v2    # "participantsModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v3, "maillist"

    .line 4946
    const-string/jumbo v4, "mail_ding_click"

    invoke-static {v4, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lry;->a()Lry;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->m:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5, p0}, Lry;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/util/List;ILcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1297
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1298
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    .line 1299
    const-string/jumbo v2, "mail_server_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->f:Ljava/lang/String;

    .line 1300
    const-string/jumbo v2, "mail_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->g:Ljava/lang/String;

    .line 1301
    const-string/jumbo v2, "mail_address_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    .line 1302
    const-string/jumbo v2, "mail_ding_available"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->l:Z

    .line 1303
    const-string/jumbo v2, "intent_key_simple_model"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->m:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    :goto_0
    if-nez v0, :cond_1

    .line 281
    const-string/jumbo v0, "CMailListParticipantsActivity"

    const-string/jumbo v1, "initArgs fail, finish"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->finish()V

    .line 290
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1305
    goto :goto_0

    .line 286
    :cond_1
    sget v0, Laxo$g;->activity_mail_list_participants:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->setContentView(I)V

    .line 1312
    sget v0, Laxo$f;->back:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b:Landroid/view/View;

    .line 1313
    sget v0, Laxo$f;->close:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c:Landroid/view/View;

    .line 1314
    sget v0, Laxo$f;->title:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d:Landroid/widget/TextView;

    .line 1315
    sget v0, Laxo$f;->common_list_view:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/CommonListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    .line 1316
    sget v0, Laxo$f;->menu_call:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1317
    sget v0, Laxo$f;->menu_ding:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b(Z)V

    .line 1319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    .line 1321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1323
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->l:Z

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1334
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setCommonListener(Lcom/alibaba/alimei/mail/widget/CommonListView$a;)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1338
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1342
    const-string/jumbo v1, "action.maillist.participant.finish.self"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1347
    new-instance v0, Lada;

    invoke-direct {v0, p0}, Lada;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    .line 1348
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    .line 2079
    iput-object v1, v0, Lada;->f:Ljava/lang/String;

    .line 1349
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1350
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a:Lcom/alibaba/alimei/mail/widget/CommonListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1354
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    invoke-static {v0, v1}, Lafh;->b(Ljava/lang/String;Lxv;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 526
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 527
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->r:Landroid/content/BroadcastReceiver;

    .line 531
    :cond_0
    return-void
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
    .line 437
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    if-nez v5, :cond_1

    .line 4471
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v5, p3}, Lada;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 442
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v4, :cond_0

    .line 446
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v5}, Lada;->d()Z

    move-result v3

    .line 447
    .local v3, "isSelfSent":Z
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 449
    .local v2, "isSameOrg":Z
    iget v0, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 450
    .local v0, "addressType":I
    const/4 v5, 0x2

    if-ne v5, v0, :cond_2

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    :cond_2
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v5}, Lrx;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 452
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "account_name"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v5, "mail_address_list"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string/jumbo v5, "mail_name"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->i:Lada;

    invoke-virtual {v5}, Lada;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    const-string/jumbo v5, "mail_server_id"

    iget-object v6, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->mailServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_4
    const-string/jumbo v5, "/mail/maillist_participant.html"

    invoke-virtual {p0, v5, v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 4470
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_5
    if-eqz v4, :cond_0

    .line 4473
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 4474
    invoke-static {p0, v5}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 429
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 424
    return-void
.end method
