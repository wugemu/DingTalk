.class public Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:F

.field private m:Z

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    .line 84
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    .line 90
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->h:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->h:I

    return p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 360
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 361
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->i:Ljava/lang/String;

    .line 362
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->ExpandableTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->ExpandableTextView_maxCollapsedLines:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->g:I

    .line 293
    sget v1, Lcig$l;->ExpandableTextView_animDuration:I

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->k:I

    .line 294
    sget v1, Lcig$l;->ExpandableTextView_animAlphaStart:I

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->l:F

    .line 295
    sget v1, Lcig$l;->ExpandableTextView_expandButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->q:I

    .line 296
    sget v1, Lcig$l;->ExpandableTextView_expandableTextView:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->r:I

    .line 297
    sget v1, Lcig$l;->ExpandableTextView_expandableTextViewClickable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->s:Z

    .line 306
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setVisibility(I)V

    .line 313
    return-void
.end method

.method private setExpandButtonVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;->a(ZI)V

    .line 373
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "keyUsedInAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 250
    .local p2, "collapsedStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->o:Ljava/util/Map;

    .line 251
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->p:Ljava/lang/Object;

    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->o:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 254
    .local v0, "isCollapsedStatus":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    .line 256
    .end local v0    # "isCollapsedStatus":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->clearAnimation()V

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->m:Z

    .line 258
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a()V

    .line 259
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->requestLayout()V

    .line 262
    return-void

    .line 254
    .restart local v0    # "isCollapsedStatus":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "collapseText"    # Ljava/lang/String;
    .param p2, "expandText"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->i:Ljava/lang/String;

    .line 377
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->j:Ljava/lang/String;

    .line 378
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a()V

    .line 379
    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 267
    const-string/jumbo v0, ""

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    .line 151
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a()V

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->o:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->o:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->p:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    if-eqz v1, :cond_4

    .line 161
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getHeight()I

    move-result v4

    aput v4, v1, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->e:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 166
    .local v0, "va":Landroid/animation/ValueAnimator;
    :goto_2
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    sget v2, Lcig$f;->ll_tag:I

    sget v3, Lcig$f;->ll_tag:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;->a(Landroid/widget/TextView;Z)V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->clearAnimation()V

    .line 181
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .end local v0    # "va":Landroid/animation/ValueAnimator;
    :cond_3
    move v1, v3

    .line 150
    goto :goto_1

    .line 163
    :cond_4
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getHeight()I

    move-result v4

    aput v4, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->f:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "va":Landroid/animation/ValueAnimator;
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1316
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->r:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    .line 1317
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not find the expandable textview for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->s:Z

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->q:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 201
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->c:Z

    .line 208
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setExpandButtonVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 212
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->g:I

    if-le v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    .line 2125
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 2126
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    add-int/2addr v0, v2

    .line 2127
    add-int/2addr v0, v1

    .line 220
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->f:I

    .line 224
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 227
    :cond_3
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setExpandButtonVisibility(I)V

    .line 230
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 232
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->d:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->e:I

    goto :goto_0
.end method

.method public setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->n:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 247
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->c:Z

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setVisibility(I)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    return-void
.end method
