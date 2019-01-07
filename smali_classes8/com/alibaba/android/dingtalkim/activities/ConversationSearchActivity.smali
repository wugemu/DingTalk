.class public Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ConversationSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:I

.field private e:J

.field private f:Z

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/SearchView;

.field private i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;

.field private r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

.field private s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Z

.field private v:Landroid/widget/ImageView;

.field private w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->f:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->p:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->q:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    .line 5228
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 5229
    sget v0, Lctk$i;->dt_search_category_sender:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5230
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 5250
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5251
    :cond_0
    const-string/jumbo v0, "\u3001"

    move-object v1, v0

    .line 5236
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 5237
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5238
    add-int/lit8 v0, v4, -0x1

    if-eq v2, v0, :cond_3

    .line 5239
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5236
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5253
    :cond_2
    const-string/jumbo v0, ","

    move-object v1, v0

    goto :goto_0

    .line 5241
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 5245
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setOnAttachmentClickListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;)V

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    .line 3295
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 3296
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3297
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3298
    const-string/jumbo v2, "onversationMembersFragment"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3299
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->o(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4053
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 528
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setShowFilters(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 70
    .line 4557
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4558
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 4559
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 4561
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v1, :cond_0

    .line 4562
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 4563
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 4564
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 4567
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 4568
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->i()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 4569
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4570
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4571
    const-string/jumbo v2, "keyword"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4572
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    const-string/jumbo v2, "intent_key_search_narrow"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4574
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4575
    sget v1, Lctk$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->i:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 4576
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 4577
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4578
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4579
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4581
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4582
    if-eqz v0, :cond_1

    .line 4584
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 70
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 9
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 350
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->f:Z

    .line 1406
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->d:I

    if-ne v0, v8, :cond_5

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_conversation_setting_search_quick_action_desc_mtm:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a()V

    .line 2258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_6

    .line 2280
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->u:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->x:Z

    if-eqz v0, :cond_7

    .line 2365
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->x:Z

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 2368
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;-><init>()V

    .line 2369
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->y:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setUids(Ljava/util/List;)V

    .line 2370
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 2372
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    .line 2398
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2399
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->y:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 2401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1409
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1410
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 1412
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$10;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v4, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_1

    .line 2263
    :cond_6
    new-instance v0, Ldgh;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-direct {v0, p0, v2, v3}, Ldgh;-><init>(Landroid/content/Context;Ldgh$a;Ldgh$b;)V

    .line 2276
    invoke-virtual {v0}, Ldgh;->a()V

    goto/16 :goto_2

    .line 2284
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v8, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v2, p0, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/content/Context;Z)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    .line 2286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_8

    .line 2287
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2288
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->t:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2291
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a()V

    goto/16 :goto_3

    .line 2284
    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 674
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->p:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 675
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 676
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 682
    :goto_1
    return-void

    .line 4537
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    if-eqz v2, :cond_5

    .line 4538
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v2

    .line 4539
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4543
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v2

    .line 4544
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4548
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_5
    move v1, v0

    .line 4553
    goto :goto_0

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    return-object v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 703
    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 704
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "mtm"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_setting_pic_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 714
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 715
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "showOrigin"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    const-string/jumbo v3, "scroll_to_bottom"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    const-string/jumbo v3, "intent_key_menu_seed"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->e:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 718
    const-string/jumbo v3, "intent_key_find_in_chat"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v4}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 723
    .local v1, "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v7, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Landroid/os/Bundle;)V

    .line 729
    .end local v1    # "fetcher":Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    :goto_1
    return-void

    .line 708
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 709
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "oto"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_setting_pic_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 725
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;-><init>()V

    .line 726
    .local v1, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 727
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v7, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 732
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "mtm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_setting_space_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 742
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 743
    return-void

    .line 737
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "oto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_setting_space_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 163
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->x:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->getSelectedMenuName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a(Z)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->rl_conversation_search_by_pic_container:I

    if-ne v0, v1, :cond_1

    .line 687
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b()V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->rl_conversation_search_by_file_container:I

    if-ne v0, v1, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c()V

    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->rl_conversation_search_by_link_container:I

    if-ne v0, v1, :cond_0

    .line 691
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 692
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/conversation_links.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x8

    .line 133
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget v0, Lctk$g;->activity_conversation_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->setContentView(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_auto_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->x:Z

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_auto_search_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_auto_search_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->y:Ljava/util/List;

    .line 1188
    :cond_0
    sget v0, Lctk$f;->fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->g:Landroid/widget/LinearLayout;

    .line 1189
    sget v0, Lctk$f;->ll_conversation_search_by_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j:Landroid/widget/LinearLayout;

    .line 1191
    sget v0, Lctk$f;->rl_conversation_search_by_pic_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->k:Landroid/widget/RelativeLayout;

    .line 1193
    sget v0, Lctk$f;->rl_conversation_search_by_file_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->l:Landroid/widget/RelativeLayout;

    .line 1195
    sget v0, Lctk$f;->rl_conversation_search_by_link_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->m:Landroid/widget/RelativeLayout;

    .line 1197
    sget v0, Lctk$f;->ll_auto_search_result_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->n:Landroid/widget/LinearLayout;

    .line 1199
    sget v0, Lctk$f;->tv_search_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    .line 1201
    sget v0, Lctk$f;->iv_water_mark:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->v:Landroid/widget/ImageView;

    .line 1203
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->u:Z

    .line 1216
    :goto_0
    sget v0, Lctk$f;->ll_search_filter_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->t:Landroid/widget/LinearLayout;

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_1

    .line 1218
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1219
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->t:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    :cond_1
    sget v0, Lctk$i;->dt_seach_hint_global_msg:I

    invoke-static {p0, v0}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1306
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->d:I

    .line 1314
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    .line 1315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 1316
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->e:J

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1321
    :goto_1
    return-void

    .line 1208
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->x:Z

    if-eqz v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1212
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->s:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    goto/16 :goto_0

    .line 1324
    :cond_4
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1325
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 1326
    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b:Ljava/lang/String;

    .line 1324
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 600
    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 601
    .local v0, "searchInput":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 602
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 603
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 604
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    sget v3, Lctk$i;->dt_seach_hint_global_msg:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 606
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-static {v0, v2}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 619
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 648
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 649
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    .line 664
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->a()V

    .line 666
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->h:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-interface {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->a(I)V

    .line 670
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 666
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->b()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->w:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    .line 159
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->onBackPressed()V

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->fragment_container:I

    if-ne v0, v1, :cond_0

    .line 592
    invoke-static {p0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 595
    :cond_0
    return v2
.end method
