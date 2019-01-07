.class public Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CsDentryListFragment.java"

# interfaces
.implements Lgdu$b;


# instance fields
.field private a:Lgdu$a;

.field private b:Lgdt;

.field private c:I

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;

.field private g:Lgdv;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->c:I

    .line 93
    return-void
.end method

.method static a(Landroid/content/Intent;)Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;-><init>()V

    .line 88
    .local v0, "fragment":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdu$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a:Lgdu$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;Lgdv;)Lgdv;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
    .param p1, "x1"    # Lgdv;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private i()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    .line 572
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    move-result-object v0

    .line 555
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 558
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "bizMode"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 8066
    iput p1, v0, Lgdt;->d:I

    .line 271
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 404
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->show()V

    .line 488
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 411
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    .line 441
    .local v0, "createFileListener":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x13b0

    sget v3, Lfzs$h;->dt_cspace_ali_doc:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$e;->file_adoc:I

    invoke-static {v2, v3, v4}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    .line 443
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x13ba

    sget v3, Lfzs$h;->dt_cspace_ali_xls:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$e;->file_axls:I

    invoke-static {v2, v3, v4}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    .line 450
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x13c4

    sget v3, Lfzs$h;->space_upload:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$h;->icon_cloudup:I

    invoke-static {v2, v3, v4}, Lgqm;->a(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    .line 476
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x13ce

    sget v3, Lfzs$h;->space_op_create_folder:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$h;->icon_folder_add:I

    invoke-static {v2, v3, v4}, Lgqm;->a(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$9;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$9;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    .line 485
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/4 v2, 0x1

    .line 9083
    iput-boolean v2, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->c:Z

    .line 486
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a()V

    .line 487
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->show()V

    goto :goto_0

    .line 445
    :cond_2
    invoke-static {}, Lglr;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x1392

    sget v3, Lfzs$h;->dt_cspace_online_docx:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$e;->file_doc:I

    invoke-static {v2, v3, v4}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    .line 447
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->q:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    const/16 v2, 0x139c

    sget v3, Lfzs$h;->dt_cspace_online_xlsx:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lfzs$e;->file_xls:I

    invoke-static {v2, v3, v4}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 6180
    iget-object v1, v1, Lgdv;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    move-result-object v0

    .line 233
    .local v0, "activity":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;
    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-nez v1, :cond_2

    .end local p1    # "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    :cond_1
    return-void

    .line 234
    .restart local p1    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 7070
    iput-boolean p1, v0, Lgdt;->e:Z

    .line 243
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8192
    iget-object v2, v1, Lgdv;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 8193
    if-eqz p1, :cond_0

    .line 8194
    iget-object v0, v1, Lgdv;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_0
    return-void

    .line 8192
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 373
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    return-void

    .line 373
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    move-result-object v0

    .line 547
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 550
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3
    .param p1, "sortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8211
    if-ne p1, v2, :cond_1

    .line 8212
    iput p1, v0, Lgdv;->b:I

    .line 8213
    iget-object v0, v0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    :cond_0
    :goto_0
    return-void

    .line 8215
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 8216
    iput p1, v0, Lgdv;->b:I

    .line 8217
    iget-object v0, v0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 7074
    iput-boolean p1, v0, Lgdt;->f:Z

    .line 250
    :cond_0
    return-void
.end method

.method public final b(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 497
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method

.method public final c(I)V
    .locals 3
    .param p1, "viewMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8226
    if-nez p1, :cond_1

    .line 8227
    iput p1, v0, Lgdv;->a:I

    .line 8228
    iget-object v1, v0, Lgdv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lfzs$h;->icon_work:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 8229
    invoke-virtual {v0}, Lgdv;->a()V

    :cond_0
    :goto_0
    return-void

    .line 8231
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 8232
    iput p1, v0, Lgdv;->a:I

    .line 8233
    iget-object v1, v0, Lgdv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lfzs$h;->icon_workmore:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 8234
    invoke-virtual {v0}, Lgdv;->a()V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 7078
    iput-boolean p1, v0, Lgdt;->k:Z

    .line 257
    :cond_0
    return-void
.end method

.method public final c(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 507
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 7082
    iput-boolean p1, v0, Lgdt;->l:Z

    .line 264
    :cond_0
    return-void
.end method

.method public final d(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 513
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    return-void

    .line 513
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8184
    iget-object v1, v0, Lgdv;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 285
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 8086
    iget-object v1, v0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    if-eqz v1, :cond_0

    .line 8087
    iget-object v0, v0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->supportInvalidateOptionsMenu()V

    .line 278
    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    const/4 v1, 0x0

    .line 8188
    iget-object v0, v0, Lgdv;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 383
    return-void
.end method

.method public final g(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    const/4 v1, 0x0

    .line 8199
    iget-object v0, v0, Lgdv;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public final h()Lged$b;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;

    return-object v0
.end method

.method public final h(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8203
    iget-object v0, v0, Lgdv;->f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setEnabled(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8207
    iget-object v0, v0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 320
    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8222
    iget-object v1, v0, Lgdv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 334
    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->g:Lgdv;

    .line 8239
    iget-object v1, v0, Lgdv;->i:Landroid/view/View;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 8240
    iget-object v0, v0, Lgdv;->j:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 348
    :cond_0
    return-void
.end method

.method public final l(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final m(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 492
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 493
    return-void

    .line 492
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->setHasOptionsMenu(Z)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a:Lgdu$a;

    invoke-interface {v0}, Lgdu$a;->e()V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lgdw;->a(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)Lgdw;

    move-result-object v0

    .line 110
    .local v0, "presenter":Lgdu$a;
    new-instance v1, Lgdt;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lgdt;-><init>(Lgdu$a;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 111
    .end local v0    # "presenter":Lgdu$a;
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 106
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CsDentryListFragment"

    const-string/jumbo v3, "onCreate: can not create presenter"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1534
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1535
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x66

    const/16 v2, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 4092
    iget v1, v0, Lgdt;->d:I

    if-nez v1, :cond_3

    .line 4093
    iget-boolean v1, v0, Lgdt;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lgdt;->f:Z

    if-eqz v1, :cond_2

    .line 4225
    :cond_0
    if-eqz p1, :cond_2

    .line 4228
    sget v1, Lfzs$h;->action_contact_add:I

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4229
    iget-object v2, v0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a()Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4230
    iget-object v0, v0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a()Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    move-result-object v0

    sget v2, Lfzs$h;->icon_more:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4232
    :cond_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4094
    :cond_2
    :goto_0
    return-void

    .line 4097
    :cond_3
    iget v1, v0, Lgdt;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4098
    iget-boolean v1, v0, Lgdt;->k:Z

    if-eqz v1, :cond_4

    .line 4236
    if-eqz p1, :cond_4

    .line 4239
    const/16 v1, 0x65

    sget v2, Lfzs$h;->space_op_select_all:I

    invoke-interface {p1, v3, v5, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4240
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4101
    :cond_4
    iget-boolean v0, v0, Lgdt;->l:Z

    if-eqz v0, :cond_2

    .line 4244
    if-eqz p1, :cond_2

    .line 4247
    const/16 v0, 0x67

    sget v1, Lfzs$h;->space_op_uncheck_all:I

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4248
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2131
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->swipe_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 2132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lfzs$c;->swipe_refresh_color1:I

    aput v2, v1, v4

    sget v2, Lfzs$c;->swipe_refresh_color2:I

    aput v2, v1, v5

    const/4 v2, 0x2

    sget v3, Lfzs$c;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 2134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 2135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2136
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 2143
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->e:Landroid/support/v7/widget/RecyclerView;

    .line 2144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 2166
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;

    .line 2168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    .line 3119
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;)V

    .line 3181
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->rl_operation_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->h:Landroid/view/View;

    .line 3182
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_operation_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i:Landroid/widget/TextView;

    .line 3183
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_operation_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->j:Landroid/widget/TextView;

    .line 3190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_operation_right_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->k:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->first_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->l:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->guide_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->m:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->guide_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->n:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->no_file_guide_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->o:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->plus_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a:Lgdu$a;

    invoke-interface {v0}, Lgdu$a;->i()V

    .line 222
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0xc9

    const/16 v1, 0xc8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b:Lgdt;

    .line 5108
    if-eqz p1, :cond_0

    .line 5112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v0, v4

    .line 216
    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    return v4

    .line 5114
    :sswitch_0
    iget v0, v7, Lgdt;->d:I

    if-ne v0, v6, :cond_4

    .line 5115
    iget-object v0, v7, Lgdt;->a:Lgdu$a;

    invoke-interface {v0}, Lgdu$a;->j()V

    move v0, v6

    .line 5116
    goto :goto_0

    .line 5117
    :cond_4
    iget-object v0, v7, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    if-eqz v0, :cond_5

    .line 5118
    iget-object v0, v7, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->finish()V

    move v0, v6

    .line 5119
    goto :goto_0

    :cond_5
    move v0, v4

    .line 5121
    goto :goto_0

    .line 5142
    :sswitch_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5144
    iget-boolean v0, v7, Lgdt;->e:Z

    if-eqz v0, :cond_7

    .line 5209
    iget-object v0, v7, Lgdt;->g:Lfzx$a;

    if-nez v0, :cond_6

    .line 5210
    new-instance v0, Lfzx$a;

    sget v2, Lfzs$h;->space_op_multi_select:I

    .line 5211
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lfzs$h;->icon_multiset:I

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lfzx$a;-><init>(IILjava/lang/String;II)V

    iput-object v0, v7, Lgdt;->g:Lfzx$a;

    .line 5213
    :cond_6
    iget-object v0, v7, Lgdt;->g:Lfzx$a;

    .line 5145
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5147
    :cond_7
    iget-boolean v0, v7, Lgdt;->f:Z

    if-eqz v0, :cond_9

    .line 5217
    iget-object v0, v7, Lgdt;->h:Lfzx$a;

    if-nez v0, :cond_8

    .line 5218
    new-instance v0, Lfzx$a;

    sget v1, Lfzs$h;->dt_space_list_operation_filter:I

    .line 5219
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lfzs$h;->icon_filter:I

    move v1, v9

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lfzx$a;-><init>(IILjava/lang/String;II)V

    iput-object v0, v7, Lgdt;->h:Lfzx$a;

    .line 5221
    :cond_8
    iget-object v0, v7, Lgdt;->h:Lfzx$a;

    .line 5148
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5150
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5154
    iget-object v0, v7, Lgdt;->j:Lfzx;

    if-eqz v0, :cond_b

    .line 5155
    iget-object v0, v7, Lgdt;->j:Lfzx;

    invoke-virtual {v0, v8}, Lfzx;->a(Ljava/util/List;)V

    .line 5160
    :goto_1
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_c

    .line 5161
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_a
    :goto_2
    move v0, v6

    .line 5125
    goto/16 :goto_0

    .line 5157
    :cond_b
    new-instance v0, Lfzx;

    iget-object v1, v7, Lgdt;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lfzx;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, v7, Lgdt;->j:Lfzx;

    goto :goto_1

    .line 5165
    :cond_c
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, v7, Lgdt;->c:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v5, Lfzs$i;->DtTheme_Widget_ListPopupWindow:I

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    .line 5168
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 5169
    iget-object v0, v7, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    if-eqz v0, :cond_d

    iget-object v0, v7, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a()Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5170
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    iget-object v1, v7, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a()Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 5172
    :cond_d
    iget-object v0, v7, Lgdt;->c:Landroid/content/Context;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 5173
    iget-object v1, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 5174
    iget-object v1, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    iget-object v2, v7, Lgdt;->c:Landroid/content/Context;

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 5175
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 5177
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    iget-object v1, v7, Lgdt;->j:Lfzx;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5178
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    new-instance v1, Lgdt$1;

    invoke-direct {v1, v7}, Lgdt$1;-><init>(Lgdt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5189
    iget-object v0, v7, Lgdt;->i:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_2

    .line 5128
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_file_selectall_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5129
    iget-object v0, v7, Lgdt;->a:Lgdu$a;

    invoke-interface {v0, v6}, Lgdu$a;->a(Z)V

    move v0, v6

    .line 5130
    goto/16 :goto_0

    .line 5133
    :sswitch_3
    iget-object v0, v7, Lgdt;->a:Lgdu$a;

    invoke-interface {v0, v4}, Lgdu$a;->a(Z)V

    move v0, v6

    .line 5134
    goto/16 :goto_0

    .line 5112
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lfzs$g;->cspace_dentry_list:I

    return v0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lgdu$a;

    .line 9526
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdu$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a:Lgdu$a;

    .line 53
    return-void
.end method
