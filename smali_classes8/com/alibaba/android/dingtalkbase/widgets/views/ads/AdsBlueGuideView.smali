.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
.super Landroid/widget/FrameLayout;
.source "AdsBlueGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 44
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->m:I

    .line 61
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a:F

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b:F

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->c:F

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->d:F

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 44
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 56
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->m:I

    .line 61
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a:F

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b:F

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->c:F

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->d:F

    .line 75
    sget-object v1, Lcig$l;->AdsBlueGuideView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 77
    sget v1, Lcig$l;->AdsBlueGuideView_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->k:Ljava/lang/String;

    .line 78
    sget v1, Lcig$l;->AdsBlueGuideView_buttonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->l:Ljava/lang/String;

    .line 79
    sget v1, Lcig$l;->AdsBlueGuideView_buttonVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->m:I

    .line 80
    sget v1, Lcig$l;->AdsBlueGuideView_arrowOrientation:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->typeValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->fromValue(I)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 81
    sget v1, Lcig$l;->AdsBlueGuideView_arrowAlign:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->typeValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->fromValue(I)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 82
    sget v1, Lcig$l;->AdsBlueGuideView_arrowMarginLeft:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a:F

    .line 83
    sget v1, Lcig$l;->AdsBlueGuideView_arrowMarginTop:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b:F

    .line 84
    sget v1, Lcig$l;->AdsBlueGuideView_arrowMarginRight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->c:F

    .line 85
    sget v1, Lcig$l;->AdsBlueGuideView_arrowMarginBottom:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->d:F

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static a(Landroid/graphics/PointF;FLandroid/graphics/RectF;Landroid/graphics/PointF;Z)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;
    .locals 7
    .param p0, "viewSize"    # Landroid/graphics/PointF;
    .param p1, "arrowWidth"    # F
    .param p2, "allowArea"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/PointF;
    .param p4, "arrowPreferDown"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;-><init>()V

    .line 209
    .local v1, "result":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;
    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    div-float/2addr v2, v6

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    .line 210
    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 211
    iget v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 212
    .local v0, "oldX":F
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 213
    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 215
    :cond_0
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 216
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 218
    :cond_1
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    iget v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    sub-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    .line 219
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    add-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 220
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    iget v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 221
    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    .line 222
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->e:Z

    .line 224
    :cond_2
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    .line 225
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    iget v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    .line 226
    iput v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    .line 227
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->e:Z

    .line 230
    :cond_3
    iput v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->a:I

    .line 231
    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    .line 232
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 233
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->a:I

    .line 234
    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    .line 244
    :cond_4
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 245
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->e:Z

    .line 247
    :cond_5
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 248
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->e:Z

    .line 251
    :cond_6
    return-object v1
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrow"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x2

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$2;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 168
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 171
    :goto_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a:F

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b:F

    .line 172
    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->c:F

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->d:F

    .line 174
    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void

    .line 159
    :pswitch_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 165
    :pswitch_2
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->ads_blue_guide_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    sget v0, Lcig$f;->tv_blue_guide_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    .line 97
    sget v0, Lcig$f;->tv_blue_guide_i_know:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    .line 98
    sget v0, Lcig$f;->iv_blue_guide_up_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->g:Landroid/view/View;

    .line 99
    sget v0, Lcig$f;->iv_blue_guide_down_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->h:Landroid/view/View;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/content/Context;)V

    .line 103
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1114
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->m:I

    if-nez v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1119
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1120
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1121
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->h:Landroid/view/View;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    if-ne v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->g:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->DOWN:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->h:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setArrowOrientation(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;)V
    .locals 1
    .param p1, "arrowOrientation"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method public setButtOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->k:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void
.end method
