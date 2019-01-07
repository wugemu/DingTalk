.class public Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MarkMailTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;,
        Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;,
        Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;,
        Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->s:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 771
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    const/4 v4, 0x1

    .line 54
    .line 6308
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    .line 6312
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6313
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6314
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 6316
    if-eqz v0, :cond_0

    .line 6320
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isFollowTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6321
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isCompleteTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6322
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6325
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6326
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6330
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6331
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6340
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h()V

    .line 6341
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 6342
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b()V

    .line 54
    :cond_2
    return-void

    .line 6337
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .prologue
    .line 54
    .line 6542
    if-nez p1, :cond_0

    .line 6543
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v1, "delte tag fail for tagModel is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6577
    :goto_0
    return-void

    .line 7462
    :cond_0
    const-string/jumbo v0, "mail_tag_del_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 6549
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 6574
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lafw;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v1

    .line 6575
    if-eqz v1, :cond_1

    .line 6576
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/TagApi;->removeTag(Ljava/lang/String;Lxv;)V

    .line 6577
    sget v0, Laxo$i;->dt_cmail_deleting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->showLoadingDialog(I)V

    goto :goto_0

    .line 6579
    :cond_1
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v1, "delte tag fail for tagApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    sget-object v1, Lpo;->a:Lpo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    sget v1, Laxo$i;->dt_cmail_add_tag:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    sget-object v1, Lpo;->a:Lpo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->b(Ljava/util/List;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_2
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v1, "mAdapter is null, error!!!!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .prologue
    .line 54
    .line 7584
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7585
    sget v1, Laxo$i;->dt_cmail_delete_tag_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->sure:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    .line 7586
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 7591
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7597
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 54
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    .line 6521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6522
    const-string/jumbo v1, "mail_server_id"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6523
    const-string/jumbo v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6524
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    return v0
.end method

.method private h()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "count":I
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 436
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    .local v2, "tagId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "tagId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->g:Landroid/widget/TextView;

    sget v4, Laxo$i;->dt_cmail_select_tag_description:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    .line 471
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_csc_finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->i:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_cmail_edit_tag:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 483
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b()V

    .line 484
    return-void

    :cond_0
    move v0, v2

    .line 470
    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_edit:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->i:Landroid/widget/TextView;

    sget v3, Laxo$i;->dd_cmail_select_tag:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->i()V

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 449
    .local v0, "id":I
    sget v1, Laxo$f;->cancel:I

    if-ne v1, v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    sget v1, Laxo$f;->btn_ok:I

    if-ne v1, v0, :cond_3

    .line 4466
    const-string/jumbo v1, "mail_tag_ok_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 4487
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 4488
    if-eqz v1, :cond_2

    .line 4489
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 4490
    const-string/jumbo v3, "begin change tag: "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4491
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4492
    const-string/jumbo v3, "MarkMailTagActivity"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 4514
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->changeMailTags(Ljava/lang/String;Ljava/util/List;Lxv;)V

    goto :goto_0

    .line 4516
    :cond_2
    const-string/jumbo v1, "MarkMailTagActivity"

    const-string/jumbo v2, "obtain mailAddtionApi null, so do nothing!!!!!"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_3
    sget v1, Laxo$f;->edit_tag:I

    if-ne v1, v0, :cond_0

    .line 5458
    const-string/jumbo v1, "mail_tag_edit_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->i()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2195
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2196
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    .line 2197
    const-string/jumbo v2, "mail_server_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    .line 2199
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v2, "serverId is empty, so return"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 180
    :goto_0
    if-nez v0, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    .line 2267
    :goto_1
    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2205
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v2, "accountName is empty, so return"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2206
    goto :goto_0

    .line 2209
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2210
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2211
    const-string/jumbo v2, "accountName: "

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2212
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2213
    const-string/jumbo v2, " is not alimail, so return"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2214
    const-string/jumbo v2, "MarkMailTagActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2215
    goto :goto_0

    .line 2218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_3
    sget v0, Laxo$g;->activity_mark_mail_tag:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->setContentView(I)V

    .line 2222
    sget v0, Laxo$f;->content:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->c:Landroid/view/View;

    .line 2223
    sget v0, Laxo$f;->empty_layout:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->d:Landroid/view/View;

    .line 2224
    sget v0, Laxo$f;->list_view:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e:Landroid/widget/ListView;

    .line 2225
    sget v0, Laxo$f;->cancel:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->f:Landroid/view/View;

    .line 2226
    sget v0, Laxo$f;->edit_tag:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    .line 2227
    sget v0, Laxo$f;->title:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->i:Landroid/widget/TextView;

    .line 2228
    sget v0, Laxo$f;->btn_ok:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->j:Landroid/view/View;

    .line 2229
    sget v0, Laxo$f;->select_des_view:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->g:Landroid/widget/TextView;

    .line 2230
    sget v0, Laxo$f;->select_layout:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->k:Landroid/view/View;

    .line 2234
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2235
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2243
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    .line 2244
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2248
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafw;->g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    .line 2249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    if-nez v0, :cond_4

    .line 2250
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v2, "getTagDisplayer null, so return"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    .line 2259
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    .line 2260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    .line 2261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    .line 2262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    .line 2263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 2264
    if-nez v0, :cond_5

    .line 2265
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v1, "getMailApi is null, so return"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    goto/16 :goto_1

    .line 2255
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->s:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    goto :goto_2

    .line 2270
    :cond_5
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 2304
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 602
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 603
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->s:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 605
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->s:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 606
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->n:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 611
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 616
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->o:Ljava/util/List;

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 621
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->p:Ljava/util/Map;

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->q:Ljava/util/List;

    .line 629
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    if-eqz v0, :cond_6

    .line 630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 631
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 633
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->c()V

    .line 634
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    .line 636
    :cond_6
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 366
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->j:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->j:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    if-nez v3, :cond_2

    .line 371
    const-string/jumbo v3, "MarkMailTagActivity"

    const-string/jumbo v4, "onItemClick mAdapter is null, error!!!!!!"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->r:Z

    if-nez v3, :cond_6

    .line 376
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-virtual {v3, p3}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 377
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v3, :cond_5

    move-object v2, v1

    .line 378
    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 379
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    if-eqz v2, :cond_4

    .line 380
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 381
    .local v0, "contains":Z
    if-eqz v0, :cond_3

    .line 382
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->h()V

    .line 388
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->notifyDataSetChanged()V

    goto :goto_0

    .line 384
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->m:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v0    # "contains":Z
    :cond_4
    const-string/jumbo v3, "MarkMailTagActivity"

    const-string/jumbo v4, "onItemClick tagModel is null, error!!!!!!"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v2    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_5
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3454
    const-string/jumbo v3, "mail_tag_add_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 2529
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2530
    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    const-string/jumbo v4, "/mail/addOrEditTag.html"

    invoke-virtual {p0, v4, v3}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 396
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->l:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;

    invoke-virtual {v3, p3}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 397
    .restart local v1    # "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 398
    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 3535
    .restart local v2    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3536
    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string/jumbo v4, "mail_tag_model"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3538
    const-string/jumbo v4, "/mail/addOrEditTag.html"

    invoke-virtual {p0, v4, v3}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
