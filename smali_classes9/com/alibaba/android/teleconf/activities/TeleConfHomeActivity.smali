.class public Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;
.implements Lexi$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;,
        Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

.field private c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

.field private d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/wukong/im/Conversation;

.field private j:Z

.field private k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Landroid/widget/SearchView;

.field private q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private r:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/widget/SearchView$OnQueryTextListener;

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    .line 117
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$TeleConfContactChooseControl;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$1;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->r:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 119
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->s:Landroid/widget/SearchView$OnQueryTextListener;

    .line 134
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->t:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->u:Landroid/view/View$OnClickListener;

    .line 552
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 80
    .line 7456
    const/4 v0, 0x0

    .line 7458
    packed-switch p1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 7460
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;-><init>()V

    .line 7462
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->i:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;

    .line 7463
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7464
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7465
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7466
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->i:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7468
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7472
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;-><init>()V

    goto :goto_0

    .line 7458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "allowEmptyKeyword"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 660
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 662
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 666
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 667
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "keyword"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v2, "choose_mode"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    const-string/jumbo v2, "intent_key_search_tab_show_flag"

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    const-string/jumbo v2, "intent_key_search_show_global_homepage"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    const-string/jumbo v2, "intent_key_search_entry"

    sget-object v3, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->TELE_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->q()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 677
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v2, :cond_0

    .line 678
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->r:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 680
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 682
    sget v2, Leuj$i;->ll_search_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->q:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    .line 695
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f()V

    .line 696
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->supportInvalidateOptionsMenu()V

    .line 697
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 700
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    if-eqz v1, :cond_2

    .line 701
    sget v1, Leuj$m;->DtTheme_Normal:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->setTheme(I)V

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_page_bg_color:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 703
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setVisibility(I)V

    .line 704
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->showToolbar()V

    .line 715
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    :cond_1
    return-void

    .line 707
    :cond_2
    sget v1, Leuj$m;->DtTheme_NoTitle_TransparentStatusBar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->setTheme(I)V

    .line 708
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Leuj$h;->conf_bg_loading_drawable:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 709
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 712
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->hideToolbar()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "isShowBizReddot":Z
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v2, :cond_0

    .line 728
    invoke-static {p0}, Levl;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    const/4 v0, 0x1

    .line 732
    :cond_0
    const/4 v1, 0x0

    .line 6721
    .local v1, "isShowGrantReddot":Z
    invoke-static {}, Lewx;->d()Z

    move-result v2

    .line 733
    if-nez v2, :cond_1

    invoke-static {p0}, Levl;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    const/4 v1, 0x1

    .line 736
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->a()V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->b()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->l:Ljava/util/List;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->l:Ljava/util/List;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final a(ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 4
    .param p1, "valid"    # Z
    .param p2, "bizInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    .line 240
    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->k:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->getAdapter()Lgl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;

    .line 244
    .local v0, "confAdapter":Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 246
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lexi$c;

    if-eqz v2, :cond_0

    .line 247
    check-cast v1, Lexi$c;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v1}, Lexi$c;->f()V

    .line 252
    .end local v0    # "confAdapter":Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "grantType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 274
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    sget v6, Leuj$i;->agree_and_grant:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 276
    .local v1, "agreeView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    sget v6, Leuj$i;->agree_cancel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    .local v0, "agreeCancel":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    sget v6, Leuj$i;->tip_content:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    .local v2, "contentView":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 280
    .local v4, "needGotoSysSetting":Z
    const-string/jumbo v5, "calllog_denied"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "contact_denied"

    .line 281
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    :cond_0
    sget v5, Leuj$l;->dt_conference_open_permission:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 283
    const/4 v4, 0x1

    .line 287
    :goto_0
    move v3, v4

    .line 289
    .local v3, "finalNeedGotoSysSetting":Z
    const-string/jumbo v5, "contact_match_denied"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "contact_denied"

    .line 290
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 291
    :cond_1
    sget v5, Leuj$l;->dt_conference_contact_grant_alert_info_contact:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$4;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    .end local v0    # "agreeCancel":Landroid/widget/TextView;
    .end local v1    # "agreeView":Landroid/widget/TextView;
    .end local v2    # "contentView":Landroid/widget/TextView;
    .end local v3    # "finalNeedGotoSysSetting":Z
    .end local v4    # "needGotoSysSetting":Z
    :cond_2
    return-void

    .line 285
    .restart local v0    # "agreeCancel":Landroid/widget/TextView;
    .restart local v1    # "agreeView":Landroid/widget/TextView;
    .restart local v2    # "contentView":Landroid/widget/TextView;
    .restart local v4    # "needGotoSysSetting":Z
    :cond_3
    sget v5, Leuj$l;->dt_common_ok:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 293
    .restart local v3    # "finalNeedGotoSysSetting":Z
    :cond_4
    sget v5, Leuj$l;->dt_conference_contact_grant_alert_info_calllog:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g()V

    .line 269
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 687
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    .line 688
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f()V

    .line 689
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a(Ljava/lang/String;Z)V

    .line 690
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->supportInvalidateOptionsMenu()V

    .line 691
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    if-eqz v3, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    if-nez v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->getAdapter()Lgl;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;

    .line 191
    .local v2, "pagerAdapter":Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
    if-eqz v2, :cond_2

    .line 6518
    iget-object v0, v2, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->a:Landroid/support/v4/app/Fragment;

    .line 193
    .local v0, "currFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lexi$c;

    if-eqz v3, :cond_2

    .line 194
    check-cast v0, Lexi$c;

    .end local v0    # "currFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lexi$c;->g()Z

    move-result v1

    .line 195
    .local v1, "interrupt":Z
    if-nez v1, :cond_0

    .line 201
    .end local v1    # "interrupt":Z
    .end local v2    # "pagerAdapter":Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v3, Leuj$h;->conf_bg_loading_drawable:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 167
    sget v0, Leuj$j;->activity_teleconf_dingtalk_call_home_page:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->setContentView(I)V

    .line 1323
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1324
    if-eqz v3, :cond_0

    .line 1326
    :try_start_0
    const-string/jumbo v0, "conversation"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->i:Lcom/alibaba/wukong/im/Conversation;

    .line 1327
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h:Ljava/lang/String;

    .line 1337
    :cond_1
    sget v0, Leuj$i;->ll_onebox_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 1338
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setShowOneBox(Z)V

    .line 1340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(I)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(I)V

    .line 1344
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    sget v3, Leuj$l;->dt_conference_setting:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Landroid/view/View;)V

    .line 1349
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Lcn;)V

    .line 1350
    sget v0, Leuj$i;->ll_view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->setAdapter(Lgl;)V

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1354
    sget v0, Leuj$i;->ll_pager_tabs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1355
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v4, Leuj$f;->txt_color_black_selector:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1358
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$a;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1359
    iput v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    .line 1362
    :cond_2
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 1363
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    if-eqz v0, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setVisibility(I)V

    .line 1364
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    if-eqz v0, :cond_8

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    :goto_3
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 1366
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    if-eqz v0, :cond_9

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->setCanScroll(Z)V

    .line 1367
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitle(Ljava/lang/String;)V

    .line 1369
    sget v0, Leuj$i;->ll_tele_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->m:Landroid/view/View;

    .line 1370
    sget v0, Leuj$i;->ll_search_fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->n:Landroid/view/View;

    .line 1372
    sget v0, Leuj$i;->grant_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->hideToolbar()V

    .line 1379
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v3, Lble;->H:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 2166
    if-nez p0, :cond_b

    move v0, v2

    .line 1438
    :cond_3
    :goto_6
    if-eqz v0, :cond_4

    .line 2395
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2396
    invoke-static {}, Lewo;->a()Lewo;

    invoke-static {}, Lewo;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2397
    invoke-static {}, Lewo;->a()Lewo;

    .line 3092
    invoke-static {}, Lewo;->c()Landroid/content/Intent;

    move-result-object v0

    .line 3093
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_business_call:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3094
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcpp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2397
    :goto_7
    if-eqz v1, :cond_d

    .line 1442
    :cond_4
    :goto_8
    invoke-static {v6}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1443
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1444
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1445
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->j()Levj;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_5

    .line 4032
    iget-object v1, v0, Levj;->b:Ljava/lang/String;

    .line 1446
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1447
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    .line 5032
    iget-object v0, v0, Levj;->b:Ljava/lang/String;

    .line 1447
    invoke-virtual {v1, p0, v0, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5745
    :cond_5
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->j:Z

    .line 5746
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5747
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5746
    invoke-virtual {v1, v2, v0}, Lewh;->a(ZLcma;)V

    .line 173
    return-void

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1362
    goto/16 :goto_1

    .line 1363
    :cond_7
    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_8
    move v3, v2

    .line 1364
    goto/16 :goto_3

    :cond_9
    move v3, v2

    .line 1366
    goto/16 :goto_4

    .line 1367
    :cond_a
    sget v0, Leuj$l;->dt_conference_business_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2170
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "first_enter_conf_record_page"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2171
    invoke-static {p0, v3, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2172
    if-eqz v0, :cond_3

    .line 2173
    invoke-static {p0, v3, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_c
    move v1, v2

    .line 3097
    goto/16 :goto_7

    .line 2401
    :cond_d
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 2402
    if-eqz v0, :cond_4

    .line 2405
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 524
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    if-eqz v1, :cond_2

    .line 525
    const-string/jumbo v1, ""

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 526
    .local v0, "searchInput":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    if-nez v1, :cond_0

    .line 527
    sget v1, Leuj$l;->search:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    .line 528
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->s:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 531
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 532
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 533
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    invoke-static {p0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 540
    .end local v0    # "searchInput":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->p:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 178
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 545
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->o:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e()V

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 227
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    iput p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    .line 213
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g:I

    if-ne v0, v3, :cond_0

    .line 214
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 216
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_mgr_area_view_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_view_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
