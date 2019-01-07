.class public Lcom/alibaba/android/user/widget/SelectorHorizontalListView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.source "SelectorHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;,
        Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    .line 35
    iput v3, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    .line 38
    iput v3, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    .line 41
    iput v3, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->h:I

    .line 62
    iput-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lezg$n;->LimitedSizeHorizontalScrollView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lezg$n;->LimitedSizeHorizontalScrollView_max_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    .line 78
    sget v1, Lezg$n;->LimitedSizeHorizontalScrollView_max_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;-><init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;B)V

    iput-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    new-instance v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$1;-><init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V

    invoke-super {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V

    .line 93
    new-instance v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;-><init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V

    invoke-super {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    return-object v0
.end method

.method public a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "scrollX":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 148
    .local v2, "subViewWidth":I
    add-int/2addr v1, v2

    .line 144
    .end local v2    # "subViewWidth":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->scrollTo(II)V

    .line 154
    .end local v0    # "i":I
    .end local v1    # "scrollX":I
    :cond_2
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c()V

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    .line 1375
    if-eqz p1, :cond_1

    .line 1377
    iget-object v0, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .line 1378
    iget-object v3, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    iget-object v4, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v3, v4, :cond_0

    .line 1379
    iget-object v3, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v4, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v3, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1381
    iget-object v2, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->notifyDataSetChanged()V

    .line 1388
    :cond_1
    :goto_0
    return-void

    .line 1384
    :cond_2
    iget-object v3, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v4, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v3, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1386
    iget-object v2, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1387
    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v6, 0x7f110110

    const/4 v8, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "last":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "o":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 196
    .local v3, "status":I
    if-eqz v1, :cond_0

    .line 197
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 200
    :cond_0
    if-ne v8, v3, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c()V

    .line 203
    iget-object v4, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(I)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v2

    .line 206
    .local v2, "object":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    .line 209
    iget-object v4, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    invoke-interface {v4, v2}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    .line 220
    .end local v2    # "object":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .end local v3    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 2227
    .restart local v3    # "status":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a()V

    .line 2228
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v4

    .line 2230
    if-eqz v4, :cond_1

    .line 2231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2232
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2233
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2234
    invoke-virtual {v5, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2235
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 248
    const v3, 0x7f110110

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 251
    .local v2, "value":F
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_0

    .line 252
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 253
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 254
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 255
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v2    # "value":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 295
    .local v7, "widthMode":I
    iget v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    .line 296
    .local v1, "max":I
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->h:I

    if-lez v8, :cond_2

    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {v8}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getCount()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 299
    iget-object v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    invoke-virtual {v8, v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getItemViewType(I)I

    move-result v5

    .line 300
    .local v5, "type":I
    sget-object v8, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->ordinal()I

    move-result v8

    if-ne v5, v8, :cond_0

    .line 301
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->h:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->h:I

    add-int/2addr v6, v8

    goto :goto_1

    .line 306
    .end local v5    # "type":I
    :cond_1
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 309
    .end local v0    # "i":I
    .end local v6    # "width":I
    :cond_2
    if-eqz v7, :cond_4

    .line 310
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 311
    .local v4, "measuredWidth":I
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    if-ge v8, v4, :cond_3

    .line 312
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 313
    .local v2, "measureMode":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 315
    .end local v2    # "measureMode":I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 316
    .local v3, "measuredHeight":I
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    if-lez v8, :cond_4

    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    if-ge v8, v3, :cond_4

    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 318
    .restart local v2    # "measureMode":I
    iget v8, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 322
    .end local v2    # "measureMode":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->onMeasure(II)V

    .line 323
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->h:I

    .line 288
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->g:I

    .line 281
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->f:I

    .line 273
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 340
    return-void
.end method

.method public setOnItemRemovedListener(Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->i:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    .line 330
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    .prologue
    .line 335
    return-void
.end method
