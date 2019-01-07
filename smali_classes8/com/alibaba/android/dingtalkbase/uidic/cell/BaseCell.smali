.class public abstract Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;
.super Landroid/view/ViewGroup;
.source "BaseCell.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell;


# static fields
.field protected static final b:I

.field protected static final c:I


# instance fields
.field private a:Landroid/graphics/Paint;

.field protected d:Lcnk;

.field protected e:Lcom/alibaba/doraemon/image/ImageMagician;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

.field private j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->b:I

    .line 65
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->c:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 72
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->f:I

    .line 55
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    .line 56
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    .line 57
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 58
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0x8

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->f:I

    .line 55
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    .line 56
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    .line 57
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 58
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getStyleable()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a(Landroid/content/res/TypedArray;)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    :cond_0
    return-void
.end method

.method protected static a(Landroid/view/View;)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 252
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getLayout()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1138
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    .line 1139
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1140
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1141
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1142
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcig$c;->border:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    new-instance v3, Lcnj;

    invoke-direct {v3}, Lcnj;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    .line 122
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingTop()I

    move-result v3

    if-nez v3, :cond_1

    sget v2, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->c:I

    .line 126
    .local v2, "paddingTop":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingBottom()I

    move-result v3

    if-nez v3, :cond_2

    sget v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->c:I

    .line 127
    .local v0, "paddingBottom":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingLeft()I

    move-result v3

    if-nez v3, :cond_3

    sget v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->c:I

    .line 128
    .local v1, "paddingLeft":I
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->setPadding(IIII)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcig$c;->pure_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->setBackgroundColor(I)V

    .line 132
    :cond_0
    return-void

    .line 125
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingTop":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingTop()I

    move-result v2

    goto :goto_0

    .line 126
    .restart local v2    # "paddingTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingBottom()I

    move-result v0

    goto :goto_1

    .line 127
    .restart local v0    # "paddingBottom":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingLeft()I

    move-result v1

    goto :goto_2
.end method

.method protected static a(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "resId"    # I

    .prologue
    .line 304
    if-lez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected static a(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textSize"    # F

    .prologue
    .line 369
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    :cond_0
    return-void
.end method

.method protected static a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 378
    :cond_0
    return-void
.end method

.method protected static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected static b(Landroid/view/View;)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method protected static c(Landroid/view/View;)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method protected final a(I)I
    .locals 1
    .param p1, "measureHeight"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final a(Landroid/view/View;IIII)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wSpec"    # I
    .param p3, "wUsed"    # I
    .param p4, "hSpec"    # I
    .param p5, "hUsed"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 273
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->b(Landroid/view/View;)I

    move-result v5

    .line 275
    :cond_0
    return v5
.end method

.method protected abstract a()V
.end method

.method public final a(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .prologue
    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    .line 402
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->invalidate()V

    .line 404
    return-void
.end method

.method protected abstract a(Landroid/content/res/TypedArray;)V
.end method

.method protected final a(Landroid/content/res/TypedArray;IIII)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/TypedArray;
    .param p2, "vt"    # I
    .param p3, "at"    # I
    .param p4, "vb"    # I
    .param p5, "ab"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    .line 155
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 157
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->typeValue()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 156
    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->typeValue()I

    move-result v0

    invoke-virtual {p1, p5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 158
    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 160
    return-void
.end method

.method protected final a(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1240
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    .line 1241
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    .line 1243
    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 248
    return-void
.end method

.method protected final a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1300
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    const/16 v4, 0x9

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 319
    return-void

    .line 316
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "indicator"    # Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 331
    if-eqz p2, :cond_3

    .line 2035
    iget-boolean v1, p2, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;->a:Z

    .line 331
    if-eqz v1, :cond_3

    .line 332
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    instance-of v1, p2, Lcnm;

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->red_dot_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 336
    sget v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->b:I

    sget v2, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->b:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    :cond_0
    invoke-virtual {p1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 349
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 340
    :cond_1
    instance-of v1, p2, Lcnl;

    if-eqz v1, :cond_2

    .line 341
    sget v1, Lcig$e;->tab_remind:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 345
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_2
    sget v1, Lcig$e;->new_bg:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 347
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcnk;)V
    .locals 0
    .param p1, "model"    # Lcnk;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    .line 392
    return-void
.end method

.method protected final b(Landroid/view/View;IIII)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wSpec"    # I
    .param p3, "wUsed"    # I
    .param p4, "hSpec"    # I
    .param p5, "hUsed"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 280
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 281
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->c(Landroid/view/View;)I

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .prologue
    .line 413
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    .line 414
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 415
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->invalidate()V

    .line 416
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 230
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 225
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected abstract getLayout()I
.end method

.method public getModel()Lcnk;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    return-object v0
.end method

.method protected abstract getStyleable()[I
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->g:I

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getMeasuredWidth()I

    move-result v0

    .line 1190
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1198
    int-to-float v4, v0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->h:I

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getMeasuredHeight()I

    move-result v5

    .line 1211
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->j:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 1219
    int-to-float v3, v5

    int-to-float v4, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1217
    :cond_1
    :goto_1
    return-void

    .line 1192
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1195
    :pswitch_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->f:I

    int-to-float v1, v1

    int-to-float v3, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1213
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v0

    int-to-float v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1216
    :pswitch_3
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->f:I

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v0

    int-to-float v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1190
    .line 1211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 169
    return-void
.end method

.method protected final setContentCoordinate(I)V
    .locals 0
    .param p1, "coordinate"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->f:I

    .line 293
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method
