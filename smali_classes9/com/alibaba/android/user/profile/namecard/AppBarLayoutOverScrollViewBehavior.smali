.class public Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
.super Landroid/support/design/widget/AppBarLayout$Behavior;
.source "AppBarLayoutOverScrollViewBehavior.java"


# instance fields
.field a:I

.field b:F

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/widget/ImageView;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;-><init>()V

    .line 449
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b:F

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 449
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b:F

    .line 113
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->c:Landroid/content/Context;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->h:I

    return v0
.end method

.method private static a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "parent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 204
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 205
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private a(F)V
    .locals 3
    .param p1, "ratio"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 426
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 428
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 433
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    return v0
.end method

.method private b(F)V
    .locals 3
    .param p1, "transitionY"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 441
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 443
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 447
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b(F)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
    .locals 2
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->k:Ljava/util/List;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public final b(I)Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;
    .locals 2
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->l:Ljava/util/List;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object p0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "layoutDirection"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    .line 1165
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    .line 1167
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->k:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    .line 1172
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->l:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1175
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-nez v1, :cond_2

    .line 1176
    sget v1, Lezg$h;->ui_common_base_ui_activity_toolbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    .line 1177
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1179
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->q:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1180
    sget v1, Lezg$h;->user_profile_tab_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->q:Landroid/view/View;

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->p:Landroid/view/View;

    if-nez v1, :cond_4

    .line 1183
    sget v1, Lezg$h;->info_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->p:Landroid/view/View;

    .line 1184
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->p:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1187
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->s:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    .line 1188
    sget v1, Lezg$h;->user_profile_avatar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->s:Landroid/widget/ImageView;

    .line 1220
    :cond_5
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->setClipChildren(Z)V

    .line 1221
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    .line 1223
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1225
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->n:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1226
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->e:I

    .line 1228
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->r:I

    .line 1229
    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a:I

    iget v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->r:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->t:I

    .line 1230
    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    iget v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a:I

    iget v3, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->r:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->u:I

    .line 128
    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 30
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 2285
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p5, v0

    if-lez v0, :cond_0

    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->j:Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2288
    invoke-super/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    .line 30
    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 5
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 236
    .line 1299
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->t:I

    if-lt v0, v1, :cond_0

    .line 1300
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->t:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1302
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->o:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1303
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->p:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 238
    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 240
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_1
    if-lez p5, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    if-gt v0, v1, :cond_3

    :cond_2
    if-gez p5, :cond_5

    .line 245
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    if-lt v0, v1, :cond_5

    .line 248
    :cond_3
    int-to-float v0, p5

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int p5, v0

    .line 1336
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    int-to-float v1, p5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    .line 1338
    if-gez p5, :cond_4

    .line 1339
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    .line 1342
    :cond_4
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->g:F

    .line 1344
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->g:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(F)V

    .line 1347
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->g:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->i:I

    .line 1350
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->i:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b(F)V

    .line 1353
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->h:I

    .line 1355
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBottom(I)V

    goto :goto_0

    .line 251
    :cond_5
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .param p6, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 273
    if-ne p6, v0, :cond_0

    .line 275
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 278
    :goto_0
    return v0

    .line 277
    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->j:Z

    .line 278
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 8
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    if-ne p4, v5, :cond_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 266
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 1367
    iput v4, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->f:F

    .line 1368
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->j:Z

    if-eqz v0, :cond_2

    .line 1391
    new-array v0, v7, [F

    iget v1, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->g:F

    aput v1, v0, v6

    aput v2, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1392
    new-instance v1, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$1;-><init>(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1409
    new-array v1, v7, [F

    iget v2, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->i:I

    int-to-float v2, v2

    aput v2, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1410
    new-instance v2, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior$2;-><init>(Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1372
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1373
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1374
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 265
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    goto :goto_0

    .line 1377
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->a(F)V

    .line 1378
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->b(F)V

    .line 1379
    iget v0, p0, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->d:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->setBottom(I)V

    goto :goto_1
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/profile/namecard/AppBarLayoutOverScrollViewBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method
