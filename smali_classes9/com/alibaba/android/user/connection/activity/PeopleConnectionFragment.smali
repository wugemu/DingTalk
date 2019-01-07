.class public Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lfcm$b;


# instance fields
.field protected a:J

.field protected b:Lfex;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lfce;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

.field private k:Lfdp;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

.field private p:Lfez;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 678
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->g:Ljava/util/List;

    return-object p1
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_connection_empty_posts_profile:I

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "view":Landroid/view/View;
    sget v2, Lezg$h;->empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 293
    .local v0, "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    iget-boolean v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->q:Z

    if-eqz v2, :cond_2

    .line 294
    sget v2, Lezg$l;->dt_user_connection_empty_other:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 295
    sget v2, Lezg$l;->icon_moments_fill:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 296
    sget v2, Lezg$e;->bg_gray:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontColor(I)V

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Lfce;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Lfce;->d(Landroid/view/View;)V

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Lfce;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    invoke-virtual {v2, v1}, Lfce;->b(Landroid/view/View;)V

    .line 308
    :cond_1
    return-void

    .line 298
    :cond_2
    sget v2, Lezg$l;->dt_user_profile_circle_no_access:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 299
    sget v2, Lezg$l;->icon_lock_fill:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 300
    sget v2, Lezg$e;->bg_blue:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontColor(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    const/4 v3, 0x0

    .line 60
    .line 5474
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->m:Z

    if-eqz v0, :cond_0

    .line 5483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->m:Z

    .line 5485
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l:Z

    if-nez v0, :cond_0

    .line 5488
    invoke-static {v3, v3}, Lfcc;->a(II)V

    .line 5489
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$9;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 5495
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5496
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b:Lfex;

    invoke-virtual {v0}, Lfex;->b()V

    .line 5478
    :cond_0
    iput-boolean v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l:Z

    .line 5479
    iput-boolean v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->m:Z

    .line 60
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfez;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->p:Lfez;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfdp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k:Lfdp;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V
    .locals 1
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "comment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .param p3, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k:Lfdp;

    invoke-virtual {v0, p1, p2, p3}, Lfdp;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V

    .line 123
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->n:Z

    .line 104
    iput-object v7, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->i:Ljava/util/List;

    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_0

    .line 1134
    const-string/jumbo v3, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a:J

    .line 1135
    const-string/jumbo v3, "hasPermission"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->q:Z

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->circle_timeline_list:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1362
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    .line 1364
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a:J

    .line 1461
    new-instance v3, Lfce;

    invoke-direct {v3, v0, v4, v5}, Lfce;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    .line 1364
    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 2074
    iput-object v3, v0, Lfce;->c:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1400
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$6;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 2078
    iput-object v3, v0, Lfce;->e:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

    .line 1412
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f:Lfce;

    invoke-virtual {v0, p0}, Lfce;->a(Lfcm$b;)V

    .line 1413
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1427
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lezg$j;->item_connection_empty_posts:I

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->e:Landroid/view/View;

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lezg$j;->item_connection_footer_layout:I

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d:Landroid/view/View;

    .line 2149
    new-instance v0, Lfdp;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->I:Landroid/view/View;

    sget v6, Lezg$h;->circle_timeline_content_layout:I

    .line 2164
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v3, v4, v7, v5}, Lfdp;-><init>(Landroid/app/Activity;Lfdp$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k:Lfdp;

    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k:Lfdp;

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$2;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 3143
    iput-object v3, v0, Lfdp;->c:Lcov;

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->q:Z

    if-eqz v0, :cond_3

    .line 3174
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    const-class v4, Lfet;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfet;

    .line 3286
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->firstParam(J)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    move-result-object v4

    .line 3465
    iget-wide v6, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 3466
    new-instance v1, Lfew;

    invoke-direct {v1, v3, v4, v0}, Lfew;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;)V

    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b:Lfex;

    .line 3287
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b:Lfex;

    invoke-virtual {v0}, Lfex;->a()V

    .line 4311
    :goto_1
    new-instance v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$4;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;-><init>(Lffa;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->p:Lfez;

    .line 116
    new-instance v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->o:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->o:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 5048
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a(Z)V

    .line 118
    return-void

    .line 3468
    :cond_1
    new-instance v5, Lfex;

    iget-boolean v6, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->n:Z

    if-nez v6, :cond_2

    :goto_2
    invoke-direct {v5, v3, v4, v0, v1}, Lfex;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;Z)V

    iput-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b:Lfex;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c()V

    goto :goto_1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lezg$j;->fragment_people_connection:I

    return v0
.end method
