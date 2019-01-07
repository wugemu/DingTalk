.class public Lcom/alibaba/android/search/fragment/AllSearchFragment;
.super Lcom/alibaba/android/search/widget/SearchBaseFragment;
.source "AllSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/fragment/AllSearchFragment$b;,
        Lcom/alibaba/android/search/fragment/AllSearchFragment$a;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

.field private B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

.field private C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

.field private D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

.field private E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

.field private F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

.field private M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

.field private N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

.field private O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

.field private P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

.field private Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Landroid/view/View;

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Landroid/view/View;

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:Landroid/view/View;

.field private aj:Landroid/view/View;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Landroid/view/View;

.field private an:Ljava/lang/String;

.field private ao:I

.field private ap:Landroid/os/Bundle;

.field private aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

.field private ar:Landroid/view/View;

.field private as:Landroid/widget/TextView;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private av:Lcom/alibaba/android/search/widget/LoadingStatView;

.field private aw:Landroid/widget/ImageView;

.field private ax:Landroid/view/View;

.field public c:Lerw$a;

.field d:Leqn$a;

.field e:Leqr$a;

.field f:Leqp$a;

.field g:Lerk$a;

.field h:Leqp$a;

.field public i:Leqp$a;

.field public j:Leqp$a;

.field public k:Leqp$a;

.field public l:Leqp$a;

.field public m:Leqp$a;

.field public n:Leqp$a;

.field public o:Leqp$a;

.field p:Leqp$a;

.field q:Leqp$a;

.field protected r:Landroid/os/Handler;

.field public s:Z

.field public t:Z

.field u:Landroid/view/View;

.field v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

.field private w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

.field private x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

.field private y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

.field private z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;-><init>()V

    .line 152
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->r:Landroid/os/Handler;

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ao:I

    .line 160
    new-instance v0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    .line 170
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    .line 171
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t:Z

    .line 237
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    return v0
.end method

.method static synthetic C(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ah:Landroid/view/View;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 6449
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6508
    :cond_0
    :goto_0
    return v0

    .line 6453
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v1, :cond_2

    .line 6454
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6455
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6460
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v1, :cond_3

    .line 6461
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6462
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6467
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6471
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->V:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6475
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->X:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6479
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6483
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aa:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6487
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ab:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6491
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ae:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6495
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ac:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6499
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ad:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6503
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->af:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6507
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ag:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6510
    const/4 v0, 0x1

    .line 83
    goto/16 :goto_0
.end method

.method static synthetic E(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->as:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .param p1, "recall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1022
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    if-nez v2, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    if-eqz p1, :cond_4

    .line 1030
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v2, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getId()I

    move-result v2

    sget v3, Lemt$e;->ll_contacts_container:I

    if-ne v2, v3, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1033
    iput-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .line 1039
    :cond_2
    sget v1, Lemt$e;->ll_fuzzy_search_contacts_container:I

    .line 1052
    .local v1, "container":I
    :goto_1
    new-instance v2, Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .line 1053
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1054
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 1055
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1057
    :cond_3
    const-string/jumbo v2, "intent_key_recall_search_results"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1058
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1059
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lenx;)V

    .line 1060
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1061
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1062
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lerw$a;)V

    .line 1063
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Leqp$a;)V

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0

    .line 1041
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "container":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v2, :cond_5

    .line 1042
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getId()I

    move-result v2

    sget v3, Lemt$e;->ll_fuzzy_search_contacts_container:I

    if-ne v2, v3, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1044
    iput-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .line 1049
    :cond_5
    sget v1, Lemt$e;->ll_contacts_container:I

    .restart local v1    # "container":I
    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->V:Landroid/view/View;

    return-object v0
.end method

.method private c(Z)V
    .locals 5
    .param p1, "recall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1073
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f:Leqp$a;

    if-nez v2, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    if-eqz p1, :cond_4

    .line 1079
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v2, :cond_2

    .line 1080
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getId()I

    move-result v2

    sget v3, Lemt$e;->ll_my_group_container:I

    if-ne v2, v3, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1082
    iput-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .line 1088
    :cond_2
    sget v1, Lemt$e;->ll_fuzzy_search_my_group_container:I

    .line 1101
    .local v1, "container":I
    :goto_1
    new-instance v2, Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .line 1102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1103
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 1104
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1106
    :cond_3
    const-string/jumbo v2, "intent_key_recall_search_results"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1107
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1108
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Lenx;)V

    .line 1109
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1110
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1111
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Lerw$a;)V

    .line 1112
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f:Leqp$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Leqp$a;)V

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0

    .line 1090
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "container":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v2, :cond_5

    .line 1091
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getId()I

    move-result v2

    sget v3, Lemt$e;->ll_fuzzy_search_my_group_container:I

    if-ne v2, v3, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1093
    iput-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .line 1098
    :cond_5
    sget v1, Lemt$e;->ll_my_group_container:I

    .restart local v1    # "container":I
    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ae:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ac:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ad:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->X:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->S:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 987
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    .line 996
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 997
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->a(Lenx;)V

    .line 998
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 999
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1000
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->a(Lerw$a;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->T:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    if-eqz v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    .line 1010
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1011
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->a(Lenx;)V

    .line 1012
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1013
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1014
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->a(Lerw$a;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Y:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g:Lerk$a;

    if-nez v0, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lenx;)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lerw$a;)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g:Lerk$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Z:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    if-nez v0, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Lenx;)V

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Lerw$a;)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aa:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->a(Lenx;)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->a(Lerw$a;)V

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->af:Landroid/view/View;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    if-nez v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/DingSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->a(Lenx;)V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->a(Lerw$a;)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ab:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    if-nez v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lenx;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lerw$a;)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ag:Landroid/view/View;

    return-object v0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    if-nez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->a(Lenx;)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->a(Lerw$a;)V

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    return-object v0
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    if-nez v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/MailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->a(Lenx;)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->a(Lerw$a;)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    if-nez v0, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->a(Lenx;)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->a(Lerw$a;)V

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 83
    .line 5588
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    if-eqz v0, :cond_f

    .line 5589
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v0, v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment$a;->a(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v0

    .line 5591
    :goto_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_search_results_new_render"

    .line 6083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 5591
    if-eqz v3, :cond_e

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    move v0, v2

    .line 5595
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    if-eqz v1, :cond_1

    .line 5596
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5597
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    invoke-interface {v2}, Leqn$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5599
    :cond_0
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    invoke-interface {v2}, Leqn$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5600
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    invoke-interface {v2}, Leqn$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5601
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    invoke-interface {v2}, Leqn$a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5604
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g:Lerk$a;

    if-eqz v1, :cond_2

    .line 5605
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g:Lerk$a;

    invoke-interface {v2}, Lerk$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5608
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    if-eqz v1, :cond_3

    .line 5609
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5612
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    if-eqz v1, :cond_4

    .line 5613
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5616
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    if-eqz v1, :cond_5

    .line 5617
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5620
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    if-eqz v1, :cond_6

    .line 5621
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5624
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    if-eqz v1, :cond_7

    .line 5625
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5628
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    if-eqz v1, :cond_8

    .line 5629
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5632
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    if-eqz v1, :cond_9

    .line 5633
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5636
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    if-eqz v1, :cond_a

    .line 5637
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5640
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    if-eqz v1, :cond_b

    .line 5641
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5644
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    if-eqz v1, :cond_c

    .line 5645
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    invoke-interface {v2}, Leqp$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 5648
    :cond_c
    if-nez v0, :cond_d

    .line 5649
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h()V

    .line 83
    :cond_d
    return-void

    .line 5591
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic s(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/widget/LoadingStatView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->av:Lcom/alibaba/android/search/widget/LoadingStatView;

    return-object v0
.end method

.method private u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    if-nez v0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->a(Lenx;)V

    .line 1244
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->a(Lerw$a;)V

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic v(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ar:Landroid/view/View;

    return-object v0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    if-nez v0, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Lenx;)V

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Lerw$a;)V

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method private w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    if-nez v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->a(Lenx;)V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->a(Lerw$a;)V

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->a(Leqp$a;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    const/4 v0, 0x1

    .line 83
    .line 6395
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    invoke-interface {v1}, Leqr$a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6440
    :cond_0
    :goto_0
    return v0

    .line 6399
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6403
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f:Leqp$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6407
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6411
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6415
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6419
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6423
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6427
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6431
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6435
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6439
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    invoke-interface {v1}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6444
    :cond_c
    const/4 v0, 0x0

    .line 83
    goto/16 :goto_0
.end method

.method static synthetic y(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->at:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t:Z

    return v0
.end method


# virtual methods
.method a(Z)Ljava/util/List;
    .locals 8
    .param p1, "addNonClicked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v0, "allNegativeSamples":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/fragment/BaseSearchFragment;>;"
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    if-eqz v5, :cond_0

    .line 1575
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    if-eqz v5, :cond_1

    .line 1579
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v5, :cond_2

    .line 1582
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v5, :cond_3

    .line 1585
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-eqz v5, :cond_4

    .line 1588
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_4
    const/4 v4, 0x0

    .line 1593
    .local v4, "reverse":Z
    if-nez p1, :cond_5

    .line 1594
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1595
    const/4 v4, 0x1

    .line 1598
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 4622
    .local v1, "fragment":Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->n()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4623
    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o()Lemz;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4624
    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o()Lemz;

    move-result-object v5

    invoke-virtual {v5}, Lemz;->c()Ljava/util/List;

    move-result-object v5

    .line 4626
    if-nez v5, :cond_9

    .line 4627
    if-eqz p1, :cond_7

    .line 4628
    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o()Lemz;

    move-result-object v5

    invoke-virtual {v5}, Lemz;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4636
    :cond_7
    :goto_1
    const/4 v5, 0x0

    .line 1599
    :goto_2
    if-nez v5, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1601
    :cond_8
    if-nez p1, :cond_6

    .line 1602
    const/4 p1, 0x1

    goto :goto_0

    .line 4630
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4631
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4633
    :cond_a
    const/4 v5, 0x1

    goto :goto_2

    .line 1607
    .end local v1    # "fragment":Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    :cond_b
    if-eqz v4, :cond_c

    .line 1608
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1611
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1612
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 1613
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1614
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/search/model/BaseModel;->setListPosition(I)V

    .line 1612
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1618
    .end local v3    # "index":I
    :cond_e
    return-object v0
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/SearchGroupType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p2, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 773
    return-void
.end method

.method public a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V
    .locals 12
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p3, "checkRender"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/SearchGroupType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v8, 0x1

    .line 776
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const/4 v0, 0x1

    .line 781
    .local v0, "allRecallSearchResult":Z
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 782
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    .line 783
    .local v1, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v10

    sget-object v11, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecallSearchTip:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v10, v11, :cond_2

    .line 784
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->isRecallSearchResult()Z

    move-result v10

    if-nez v10, :cond_2

    .line 785
    const/4 v0, 0x0

    .line 791
    .end local v1    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_3
    const/4 v4, 0x0

    .line 792
    .local v4, "fragment":Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    sget-object v9, Lcom/alibaba/android/search/fragment/AllSearchFragment$3;->b:[I

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 900
    :cond_4
    :goto_1
    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 901
    invoke-static {p1}, Lcom/alibaba/android/search/consts/SubPager;->fromSearchGroupType(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/consts/SubPager;

    move-result-object v7

    .line 903
    .local v7, "subPager":Lcom/alibaba/android/search/consts/SubPager;
    const/4 v6, 0x2

    .line 904
    .local v6, "renderState":I
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    if-eqz v9, :cond_5

    .line 905
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    invoke-interface {v9, p1}, Lcom/alibaba/android/search/fragment/AllSearchFragment$a;->a(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v6

    .line 907
    :cond_5
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aq:Lcom/alibaba/android/search/fragment/AllSearchFragment$b;

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 908
    const/4 v5, 0x1

    .line 909
    .local v5, "hasRendered":Z
    if-eqz p3, :cond_6

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v9

    const-string/jumbo v10, "f_search_results_new_render"

    .line 4083
    invoke-virtual {v9, v10, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v9

    .line 909
    if-eqz v9, :cond_6

    .line 910
    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    move v5, v8

    .line 913
    :cond_6
    :goto_2
    move v3, v5

    .line 914
    .local v3, "finalHasRendered":Z
    move-object v2, v4

    .line 915
    .local v2, "finalFragment":Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;

    invoke-direct {v9, p0, v7, v2, v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment$11;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/consts/SubPager;Lcom/alibaba/android/search/fragment/BaseSearchFragment;Z)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 794
    .end local v2    # "finalFragment":Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    .end local v3    # "finalHasRendered":Z
    .end local v5    # "hasRendered":Z
    .end local v6    # "renderState":I
    .end local v7    # "subPager":Lcom/alibaba/android/search/consts/SubPager;
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Z)V

    .line 795
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v9, :cond_4

    .line 796
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->b(Ljava/util/List;)V

    .line 797
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    goto :goto_1

    .line 801
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c(Z)V

    .line 802
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v9, :cond_4

    .line 803
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->b(Ljava/util/List;)V

    .line 804
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    goto :goto_1

    .line 808
    :pswitch_2
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k()V

    .line 809
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-eqz v9, :cond_4

    .line 810
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->b(Ljava/util/List;)V

    .line 811
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    goto :goto_1

    .line 815
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l()V

    .line 816
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    if-eqz v9, :cond_4

    .line 817
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->b(Ljava/util/List;)V

    .line 818
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    goto :goto_1

    .line 822
    :pswitch_4
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m()V

    .line 823
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    if-eqz v9, :cond_4

    .line 824
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->b(Ljava/util/List;)V

    .line 825
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    goto/16 :goto_1

    .line 829
    :pswitch_5
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n()V

    .line 830
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    if-eqz v9, :cond_4

    .line 831
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->b(Ljava/util/List;)V

    .line 832
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    goto/16 :goto_1

    .line 836
    :pswitch_6
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o()V

    .line 837
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    if-eqz v9, :cond_4

    .line 838
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->b(Ljava/util/List;)V

    .line 839
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    goto/16 :goto_1

    .line 843
    :pswitch_7
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p()V

    .line 844
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    if-eqz v9, :cond_4

    .line 845
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->b(Ljava/util/List;)V

    .line 846
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    goto/16 :goto_1

    .line 850
    :pswitch_8
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q()V

    .line 851
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    if-eqz v9, :cond_4

    .line 852
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->b(Ljava/util/List;)V

    .line 853
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    goto/16 :goto_1

    .line 857
    :pswitch_9
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->r()V

    .line 858
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-eqz v9, :cond_4

    .line 859
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->b(Ljava/util/List;)V

    .line 860
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    goto/16 :goto_1

    .line 864
    :pswitch_a
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u()V

    .line 865
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    if-eqz v9, :cond_4

    .line 866
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->b(Ljava/util/List;)V

    .line 867
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    goto/16 :goto_1

    .line 871
    :pswitch_b
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v()V

    .line 872
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-eqz v9, :cond_4

    .line 873
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->b(Ljava/util/List;)V

    .line 874
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    goto/16 :goto_1

    .line 878
    :pswitch_c
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i()V

    .line 879
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    if-eqz v9, :cond_4

    .line 880
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/AssureSearchFragment;->b(Ljava/util/List;)V

    .line 881
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    goto/16 :goto_1

    .line 885
    :pswitch_d
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j()V

    .line 886
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    if-eqz v9, :cond_4

    .line 887
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->b(Ljava/util/List;)V

    .line 888
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    goto/16 :goto_1

    .line 892
    :pswitch_e
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w()V

    .line 893
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    if-eqz v9, :cond_4

    .line 894
    iget-object v9, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    invoke-virtual {v9, p2}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->b(Ljava/util/List;)V

    .line 895
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    goto/16 :goto_1

    .line 910
    .restart local v5    # "hasRendered":Z
    .restart local v6    # "renderState":I
    .restart local v7    # "subPager":Lcom/alibaba/android/search/consts/SubPager;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->f()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->f()V

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->f()V

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;->f()V

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-eqz v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->f()V

    .line 739
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    if-eqz v0, :cond_5

    .line 740
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->f()V

    .line 743
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    if-eqz v0, :cond_6

    .line 744
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->f()V

    .line 747
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    if-eqz v0, :cond_7

    .line 748
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->f()V

    .line 751
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-eqz v0, :cond_8

    .line 752
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->f()V

    .line 755
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-eqz v0, :cond_9

    .line 756
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/SpaceSearchFragment;->f()V

    .line 759
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-eqz v0, :cond_a

    .line 760
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->f()V

    .line 762
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    if-eqz v0, :cond_b

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->f()V

    .line 765
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    if-eqz v0, :cond_c

    .line 766
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;->f()V

    .line 768
    :cond_c
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->av:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->av:Lcom/alibaba/android/search/widget/LoadingStatView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1640
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->at:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->at:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1645
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ah:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ah:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 1653
    return-void

    :cond_3
    move v0, v2

    .line 1641
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1645
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1649
    goto :goto_2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 453
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$5;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "type":Lcom/alibaba/android/search/SearchGroupType;
    const/4 v2, 0x0

    .line 182
    .local v2, "tabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aj:Landroid/view/View;

    if-ne p1, v5, :cond_4

    .line 183
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    .line 184
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 199
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 200
    move-object v1, v3

    .line 201
    .local v1, "final_type":Lcom/alibaba/android/search/SearchGroupType;
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v7, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;

    invoke-direct {v7, p0, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 213
    .end local v1    # "final_type":Lcom/alibaba/android/search/SearchGroupType;
    :cond_1
    if-eqz v2, :cond_3

    .line 214
    const-string/jumbo v4, "-1"

    .line 215
    .local v4, "uuid":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    invoke-interface {v5}, Leqr$a;->j()Leoe;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 216
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    invoke-interface {v5}, Leqr$a;->j()Leoe;

    move-result-object v5

    .line 2084
    iget-object v4, v5, Leoe;->a:Ljava/lang/String;

    .line 218
    :cond_2
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 219
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v5, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 220
    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 222
    sget-object v5, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 223
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 225
    .end local v0    # "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    .end local v4    # "uuid":Ljava/lang/String;
    :cond_3
    return-void

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ak:Landroid/view/View;

    if-ne p1, v5, :cond_5

    .line 186
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    .line 187
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    goto :goto_0

    .line 188
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->al:Landroid/view/View;

    if-ne p1, v5, :cond_6

    .line 189
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    .line 190
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    goto :goto_0

    .line 191
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->am:Landroid/view/View;

    if-ne p1, v5, :cond_7

    .line 192
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 194
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ai:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 196
    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 197
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ap:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2463
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_empty_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->as:Landroid/widget/TextView;

    .line 2464
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_search_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ar:Landroid/view/View;

    .line 2465
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2466
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ar:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$6;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2474
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->feedback_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->at:Landroid/view/View;

    .line 2475
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->at:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$7;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/LoadingStatView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->av:Lcom/alibaba/android/search/widget/LoadingStatView;

    .line 2494
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->av:Lcom/alibaba/android/search/widget/LoadingStatView;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$8;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 2503
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->vertical_scroll_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u:Landroid/view/View;

    .line 2504
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$9;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2512
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_search_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    .line 2513
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    if-eqz v0, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_more_keyword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2515
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2536
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_activity_banner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ax:Landroid/view/View;

    .line 2537
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->iv_activity_banner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    .line 2539
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2540
    iput-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->au:Landroid/view/View;

    .line 2541
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_search_more_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ah:Landroid/view/View;

    .line 2542
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ah:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2543
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_external_contact:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aj:Landroid/view/View;

    .line 2544
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aj:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2545
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2547
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_public_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ai:Landroid/view/View;

    .line 2548
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ai:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2549
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ai:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2551
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ak:Landroid/view/View;

    .line 2552
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ak:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2553
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ak:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2555
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_org:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->al:Landroid/view/View;

    .line 2556
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->al:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2557
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->al:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2559
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_favorite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->am:Landroid/view/View;

    .line 2560
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->am:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2561
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->am:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2569
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_assure_search_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->S:Landroid/view/View;

    .line 2570
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_recommend_search_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->T:Landroid/view/View;

    .line 2571
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_contacts_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->U:Landroid/view/View;

    .line 2572
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_my_group_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->W:Landroid/view/View;

    .line 2573
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_msg_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Y:Landroid/view/View;

    .line 2574
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_function_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aa:Landroid/view/View;

    .line 2575
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_dept_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ab:Landroid/view/View;

    .line 2576
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_ding_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Z:Landroid/view/View;

    .line 2577
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_external_contacts_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->V:Landroid/view/View;

    .line 2578
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_public_group_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->X:Landroid/view/View;

    .line 2579
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_mail_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ac:Landroid/view/View;

    .line 2580
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_space_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ad:Landroid/view/View;

    .line 2581
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_lightapp_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ae:Landroid/view/View;

    .line 2582
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_org_homepage_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->af:Landroid/view/View;

    .line 2583
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_suggestion_guide_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ag:Landroid/view/View;

    .line 2928
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i()V

    .line 2929
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j()V

    .line 3018
    invoke-direct {p0, v9}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Z)V

    .line 3069
    invoke-direct {p0, v9}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c(Z)V

    .line 2932
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k()V

    .line 2933
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l()V

    .line 2934
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m()V

    .line 2935
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n()V

    .line 2936
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o()V

    .line 2937
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p()V

    .line 2938
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q()V

    .line 2939
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->r()V

    .line 2940
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u()V

    .line 2941
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v()V

    .line 2942
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w()V

    .line 2944
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    if-eqz v0, :cond_6

    .line 2945
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_assure_search_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2948
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    if-eqz v0, :cond_7

    .line 2949
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_recommend_search_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2951
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-eqz v0, :cond_8

    .line 2952
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_msg_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2954
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    if-eqz v0, :cond_9

    .line 2955
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_function_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2957
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    if-eqz v0, :cond_a

    .line 2958
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_dept_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2960
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    if-eqz v0, :cond_b

    .line 2961
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_ding_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2963
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    if-eqz v0, :cond_c

    .line 2964
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_external_contacts_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2966
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    if-eqz v0, :cond_d

    .line 2967
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_public_group_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2969
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    if-eqz v0, :cond_e

    .line 2970
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_mail_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2972
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-eqz v0, :cond_f

    .line 2973
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_space_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2975
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    if-eqz v0, :cond_10

    .line 2976
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_lightapp_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2978
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-eqz v0, :cond_11

    .line 2979
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_org_homepage_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2981
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    if-eqz v0, :cond_12

    .line 2982
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lemt$e;->ll_suggestion_guide_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 3392
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_activity_banner"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3393
    if-eqz v0, :cond_13

    .line 3397
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Ljava/lang/String;)Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v8

    .line 3398
    if-eqz v8, :cond_13

    iget-object v0, v8, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    .line 3399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v8, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->bannerMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 388
    :cond_13
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    return-object v0

    .line 3404
    :cond_14
    invoke-virtual {v8}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->isOsMatch()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v8}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->isVerMatch()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3409
    :try_start_0
    iget-object v0, v8, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->bannerMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3410
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3411
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3412
    if-eqz v0, :cond_15

    .line 3414
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 3415
    mul-int/lit8 v3, v1, 0x5

    div-int/lit8 v3, v3, 0xe

    .line 3416
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3417
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3418
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3419
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3421
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->ax:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3422
    const-string/jumbo v0, ".gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3423
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 3427
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;-><init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3446
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Exception parse mediaId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->bannerMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3425
    :cond_16
    :try_start_1
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->aw:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getChildFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 659
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    if-eqz v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 661
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w:Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x:Lcom/alibaba/android/search/fragment/RecommendSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 667
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 670
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    if-eqz v2, :cond_3

    .line 671
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 673
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    if-eqz v2, :cond_4

    .line 674
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 676
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    if-eqz v2, :cond_5

    .line 677
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B:Lcom/alibaba/android/search/fragment/PublicGroupSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 679
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    if-eqz v2, :cond_6

    .line 680
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 682
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    if-eqz v2, :cond_7

    .line 683
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D:Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 685
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    if-eqz v2, :cond_8

    .line 686
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 688
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    if-eqz v2, :cond_9

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->N:Lcom/alibaba/android/search/fragment/LightAppSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 691
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    if-eqz v2, :cond_a

    .line 692
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->F:Lcom/alibaba/android/search/fragment/MailSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 694
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    if-eqz v2, :cond_b

    .line 695
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->M:Lcom/alibaba/android/search/fragment/SpaceSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 697
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-eqz v2, :cond_c

    .line 698
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->O:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 700
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    if-eqz v2, :cond_d

    .line 701
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->P:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 703
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    if-eqz v2, :cond_e

    .line 704
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->Q:Lcom/alibaba/android/search/fragment/SuggestionGuideSearchFragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 707
    :cond_e
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_f
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onDestroy()V

    .line 714
    return-void

    .line 708
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 709
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 234
    sget v0, Lemt$f;->fragment_all_search:I

    return v0
.end method
