.class public Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcoi;

.field private d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

.field private e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/SearchView;

.field private i:Landroid/widget/Button;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Landroid/widget/SearchView$OnQueryTextListener;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->j:Z

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->k:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->m:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->n:Landroid/widget/SearchView$OnQueryTextListener;

    .line 102
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->o:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 52
    .line 4446
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 4447
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 4755
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v2, :cond_1

    .line 4756
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v1, v0}, Lcvu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 4448
    :goto_0
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 4449
    .end local p1    # "x1":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_0
    return-object p1

    .line 4758
    .restart local p1    # "x1":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 374
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c:Lcoi;

    sget-object v3, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 3082
    invoke-virtual {v2, v3, v4, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-nez v2, :cond_3

    .line 382
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->j()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    const-string/jumbo v2, "choose_mode"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "count_limit"

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 388
    .local v1, "limitCount":I
    if-gtz v1, :cond_2

    .line 389
    const/16 v1, 0x9

    .line 391
    :cond_2
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string/jumbo v2, "count_limit_tips"

    sget v3, Lctk$i;->dt_im_trans_to_multiple_recipients_exceed_tips:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 394
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 439
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "limitCount":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c:Lcoi;

    sget-object v3, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 4082
    invoke-virtual {v2, v3, v4, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 440
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c()V

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->supportInvalidateOptionsMenu()V

    .line 344
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 351
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v0, :cond_5

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 348
    goto :goto_0

    :cond_4
    move v0, v1

    .line 351
    goto :goto_1

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 52
    .line 4331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    .line 4332
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c()V

    .line 4333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->supportInvalidateOptionsMenu()V

    .line 52
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->b()V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 458
    .local v0, "id":I
    sget v1, Lctk$f;->layout_create_new:I

    if-ne v0, v1, :cond_0

    .line 459
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;)V

    .line 460
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->finish()V

    .line 462
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget v1, Lctk$g;->activity_group_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_group_selection_show_search_action_bar"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->j:Z

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_message_multiple_send"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->k:Z

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1314
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "search_mode_enabled"

    invoke-static {v1, v4, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 1316
    sget v4, Lctk$f;->view_search:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    .line 1317
    if-eqz v1, :cond_5

    .line 1318
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_show_item_create"

    invoke-static {v1, v4, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 1303
    sget v4, Lctk$f;->layout_create_new:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1304
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_list_tips"

    invoke-static {v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1308
    sget v1, Lctk$f;->tv_list_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1309
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    new-instance v1, Lcoi;

    sget v3, Lctk$f;->ll_fragment_container:I

    invoke-direct {v1, p0, v3}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c:Lcoi;

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "name_card_forward"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v1, "name_card_forward"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "msg_forward"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 129
    const-string/jumbo v1, "msg_forward"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v1, "message_id"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    :goto_4
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c:Lcoi;

    sget-object v3, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->d:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 2082
    invoke-virtual {v1, v3, v4, v2}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 150
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "action_group_search_result_selected"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-interface {v1, v2, p0, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 160
    return-void

    .line 1168
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "entranceCid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {v1}, Libb;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 1170
    invoke-static {v4, v5}, Libb;->a(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1171
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    .line 1191
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-class v7, Lcma;

    invoke-static {v1, v7, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v6, v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 1193
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lctk$i;->my_group_conversation:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 1326
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 1305
    goto/16 :goto_2

    :cond_7
    move v3, v2

    .line 1310
    goto/16 :goto_3

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "from_share"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    const-string/jumbo v1, "from_share"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 133
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "choose_enterprise_group_conversation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 134
    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string/jumbo v1, "choose_people_from_contact_logic"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "choose_people_from_contact_logic"

    .line 136
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_4

    .line 137
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "intent_key_group_selection_do_logic"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 138
    const-string/jumbo v1, "intent_key_group_selection_do_logic"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string/jumbo v1, "choose_people_from_contact_logic"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "choose_people_from_contact_logic"

    .line 140
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_4

    .line 141
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "key_direct_open_conversation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "key_direct_open_conversation"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string/jumbo v1, "key_direct_uri"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "key_direct_uri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "intent_direct_open_conversation_logic"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_direct_open_conversation_logic"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 202
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v3, :cond_2

    .line 203
    const-string/jumbo v3, ""

    invoke-interface {p1, v6, v7, v7, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 204
    .local v2, "searchInput":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    if-nez v3, :cond_0

    .line 205
    sget v3, Lctk$i;->search:I

    invoke-static {p0, v3}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    .line 206
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->n:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 209
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 211
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    invoke-static {p0, v3}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 242
    .end local v2    # "searchInput":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    :goto_1
    return v3

    .line 213
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    invoke-static {p0, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->h:Landroid/widget/SearchView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 217
    :cond_3
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->k:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "choose_mode"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 219
    :cond_4
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto :goto_1

    .line 220
    :cond_5
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->j:Z

    if-eqz v3, :cond_6

    .line 221
    const/4 v3, 0x3

    const-string/jumbo v4, ""

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 222
    .local v0, "guideItem":Landroid/view/MenuItem;
    sget v3, Lctk$e;->ic_actbar_search:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 223
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 225
    .end local v0    # "guideItem":Landroid/view/MenuItem;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_show_menu_guide"

    invoke-static {v3, v4, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 226
    const-string/jumbo v3, ""

    invoke-interface {p1, v6, v8, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    .restart local v0    # "guideItem":Landroid/view/MenuItem;
    sget v3, Lctk$e;->ic_actbar_guide:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 231
    .end local v0    # "guideItem":Landroid/view/MenuItem;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_show_menu_create"

    invoke-static {v3, v4, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_share"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "msg_forward"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "name_card_forward"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2287
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->actbar_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->f:Landroid/view/View;

    .line 2288
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->f:Landroid/view/View;

    sget v4, Lctk$f;->btn_ok:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->i:Landroid/widget/Button;

    .line 2289
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->i:Landroid/widget/Button;

    sget v4, Lctk$i;->conversation_create_guide:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->i:Landroid/widget/Button;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v3, Lctk$i;->home_menu_create_conversation:I

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 237
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->f:Landroid/view/View;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 238
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 248
    .local v1, "id":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 249
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 250
    .local v2, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    const-string/jumbo v5, "https://tms.dingtalk.com/markets/dingtalk/miniappgroups?lwfrom=20150826151120810&type=groups"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 273
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    :goto_0
    return v3

    .line 254
    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string/jumbo v4, "intent_key_search_category_type"

    sget-object v5, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 259
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->getValue()I

    move-result v5

    .line 258
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string/jumbo v4, "choose_people_from_contact_logic"

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "choose_people_from_contact_logic"

    .line 262
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .line 260
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 264
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    .line 265
    invoke-virtual {v4, p0, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 267
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const v4, 0x102002c

    if-ne v1, v4, :cond_2

    .line 268
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->l:Z

    if-eqz v4, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->b()V

    goto :goto_0

    .line 273
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0
.end method
