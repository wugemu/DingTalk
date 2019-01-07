.class public final Lsm;
.super Lso;
.source "SlideFromTopPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm$a;
    }
.end annotation


# instance fields
.field public a:Lafo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lafo",
            "<",
            "Lsm;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Lsm$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lso;-><init>(Landroid/app/Activity;II)V

    .line 82
    return-void
.end method

.method static synthetic a(Lsm;)Lsm$a;
    .locals 1
    .param p0, "x0"    # Lsm;

    .prologue
    .line 54
    iget-object v0, p0, Lsm;->d:Lsm$a;

    return-object v0
.end method

.method static synthetic b(Lsm;)Lafo;
    .locals 1
    .param p0, "x0"    # Lsm;

    .prologue
    .line 54
    iget-object v0, p0, Lsm;->a:Lafo;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    invoke-super {p0}, Lso;->a()V

    .line 110
    new-instance v0, Lsm$a;

    iget-object v1, p0, Lsm;->g:Landroid/app/Activity;

    sget v2, Laxo$g;->cmail_filter_mail_item:I

    invoke-direct {v0, v1, v2}, Lsm$a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lsm;->d:Lsm$a;

    .line 111
    iget-object v0, p0, Lsm;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lsm;->d:Lsm$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lsm;->c:Landroid/widget/ListView;

    new-instance v1, Lsm$1;

    invoke-direct {v1, p0}, Lsm$1;-><init>(Lsm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lsm;->d:Lsm$a;

    .line 1200
    iput p1, v0, Lsm$a;->a:I

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "select"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v3, p0, Lsm;->d:Lsm$a;

    monitor-enter v3

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lsm;->d:Lsm$a;

    invoke-virtual {v2}, Lsm$a;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 180
    iget-object v2, p0, Lsm;->d:Lsm$a;

    invoke-virtual {v2, v0}, Lsm$a;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafn;

    .line 2140
    .local v1, "item":Lafn;
    iget-object v2, v1, Lafn;->c:Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Lsm;->a(I)V

    .line 183
    monitor-exit v3

    goto :goto_0

    .line 186
    .end local v1    # "item":Lafn;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 179
    .restart local v1    # "item":Lafn;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "item":Lafn;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lafn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    iget-object v1, p0, Lsm;->d:Lsm$a;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lsm;->d:Lsm$a;

    invoke-virtual {v0, p1}, Lsm$a;->b(Ljava/util/List;)V

    .line 104
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    iget-object v1, p0, Lsm;->g:Landroid/app/Activity;

    sget v2, Laxo$g;->cmail_slide_from_top_pop:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->animate_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lsm;->b:Landroid/view/View;

    .line 164
    sget v1, Laxo$f;->listview:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lsm;->c:Landroid/widget/ListView;

    .line 165
    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lsm;->b:Landroid/view/View;

    .line 171
    .local v0, "animateView":Landroid/view/View;
    return-object v0
.end method

.method protected final d()Landroid/view/animation/Animation;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v12, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 144
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 146
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2077
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2078
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2079
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2080
    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2081
    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 149
    .local v9, "alphaAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 150
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    return-object v10
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lsm;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
