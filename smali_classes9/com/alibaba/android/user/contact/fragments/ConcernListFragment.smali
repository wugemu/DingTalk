.class public Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "ConcernListFragment.java"


# instance fields
.field public a:Lfgh;

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

.field private m:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->j:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    .line 2453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Ljava/util/List;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/16 v1, 0x8

    .line 56
    .line 2188
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i:Z

    .line 2190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    if-nez p2, :cond_1

    .line 2193
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 2194
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f()V

    .line 2199
    :goto_0
    return-void

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2202
    :cond_2
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V

    .line 2276
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2277
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    .line 2278
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2281
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_0
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V

    .line 179
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    check-cast v0, Lcma;

    .line 183
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_0
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k:I

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v0}, Lfln;->a(IILcma;)V

    .line 184
    return-void

    .line 1296
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1298
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    sget v2, Lezg$h;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->h:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k:I

    return p1
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_concern"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_concern"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lfls;->a(Landroid/content/Context;)V

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    const/16 v2, 0x8

    .line 56
    .line 2310
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 2312
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Lfgh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a:Lfgh;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_concern_list_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->concern_add_desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 143
    new-instance v0, Lfgh;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfgh;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a:Lfgh;

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a:Lfgh;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Z)V

    .line 146
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
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->arrow_right_guide_no_concern:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lezg$j;->contact_concern_list_fragment:I

    return v0
.end method
