.class public final Lhcm;
.super Ljava/lang/Object;
.source "SwipeViewHolder.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "backgroundView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lhcm;->a:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lhcm;->b:Landroid/view/View;

    .line 32
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 178
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 182
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;J)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # J

    .prologue
    .line 186
    invoke-static {p0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 205
    :cond_0
    :goto_0
    return-object v2

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 191
    .local v2, "object":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v4, "intent_key_swipe_objects"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 194
    .local v3, "toObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    .line 196
    .local v1, "o":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    if-eqz v1, :cond_2

    iget-wide v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_2

    .line 197
    move-object v2, v1

    .line 198
    goto :goto_0

    .line 202
    .end local v1    # "o":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    :cond_3
    const-string/jumbo v4, "intent_key_swipe_object"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "object":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    check-cast v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    .restart local v2    # "object":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    goto :goto_0
.end method


# virtual methods
.method public final a(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    sub-float v0, v2, v1

    .line 40
    .local v0, "scale":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 42
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    iget-object v2, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 43
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    iget-object v2, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 44
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 45
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 46
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 47
    iget-object v1, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    iget-object v1, p0, Lhcm;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lhcm;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lhcm;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {p1}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lhcm$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lhcm$1;-><init>(Lhcm;Landroid/app/Activity;J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;J)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # J

    .prologue
    .line 127
    invoke-static {p1}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v8, p0, Lhcm;->a:Landroid/view/View;

    if-nez v8, :cond_2

    .line 131
    invoke-static {p1}, Lhcm;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v3, 0x0

    .line 136
    .local v3, "scaleX":F
    const/4 v4, 0x0

    .line 137
    .local v4, "scaleY":F
    const/4 v6, 0x0

    .line 138
    .local v6, "translationX":F
    const/4 v7, 0x0

    .line 140
    .local v7, "translationY":F
    iget-object v8, p0, Lhcm;->a:Landroid/view/View;

    invoke-static {p2, p3, v8}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v2

    .line 141
    .local v2, "fromObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-static {p1, p2, p3}, Lhcm;->c(Landroid/app/Activity;J)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v5

    .line 142
    .local v5, "toObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    if-eqz v5, :cond_3

    iget v8, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    if-eqz v8, :cond_3

    iget v8, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    if-eqz v8, :cond_3

    .line 144
    iget-wide v8, v5, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    iget-wide v10, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 145
    iget v8, v5, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    iget v9, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    sub-float v6, v8, v9

    .line 146
    iget v8, v5, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    iget v9, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    sub-float v7, v8, v9

    .line 147
    iget v8, v5, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v8, v8

    iget v9, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 148
    iget v8, v5, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    int-to-float v8, v8

    iget v9, v2, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 152
    :cond_3
    iget-object v8, p0, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x116

    .line 153
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 154
    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 155
    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 156
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lhcm$3;

    invoke-direct {v9, p0, p1}, Lhcm$3;-><init>(Lhcm;Landroid/app/Activity;)V

    .line 157
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 163
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_4

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 166
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 168
    iget-object v8, p0, Lhcm;->b:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 169
    iget-object v8, p0, Lhcm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x116

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 170
    .local v1, "backgroundAnimator":Landroid/view/ViewPropertyAnimator;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_5

    .line 171
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 173
    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method
