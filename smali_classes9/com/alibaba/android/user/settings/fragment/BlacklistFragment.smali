.class public Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BlacklistFragment.java"


# instance fields
.field public a:Lfwg;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->j:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Ljava/util/List;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/16 v1, 0x8

    .line 47
    .line 3177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i:Z

    .line 3179
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3181
    if-nez p2, :cond_1

    .line 3182
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 3183
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f()V

    .line 3188
    :goto_0
    return-void

    .line 3185
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3191
    :cond_2
    new-instance v1, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V

    .line 3264
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3265
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3268
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_0
    new-instance v0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V

    .line 169
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    check-cast v0, Lcma;

    .line 172
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_0
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k:I

    .line 2207
    const-class v1, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/BlacklistService;

    .line 2208
    new-instance v4, Lfwv$4;

    invoke-direct {v4, v2, v0}, Lfwv$4;-><init>(Lfwv;Lcma;)V

    .line 2245
    const/16 v2, 0x14

    invoke-interface {v1, v3, v2, v4}, Lcom/alibaba/wukong/im/BlacklistService;->blacklist(IILcom/alibaba/wukong/Callback;)V

    .line 173
    return-void

    .line 1281
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1283
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    sget v2, Lezg$h;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->h:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k:I

    return p1
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_black_list"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_black_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 277
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    const/16 v2, 0x8

    .line 47
    .line 3295
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3296
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 3297
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3298
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$4;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3305
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Lfwg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a:Lfwg;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_blacklist_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->black_list_empty_desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 133
    new-instance v0, Lfwg;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfwg;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a:Lfwg;

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a:Lfwg;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Z)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lezg$j;->settings_black_list_fragment:I

    return v0
.end method
