.class public abstract Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.super Landroid/view/ViewGroup;
.source "BaseCell.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcig$c;->ui_common_level1_line_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->d:I

    .line 135
    sget v1, Lcig$d;->uidic_cell_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->c:I

    .line 136
    sget v1, Lcig$d;->uidic_cell_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b:I

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->g:I

    .line 125
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 126
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->g:I

    .line 125
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 126
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a()V

    .line 156
    sget-object v1, Lcig$l;->BaseCell:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_3

    .line 1231
    sget v1, Lcig$l;->BaseCell_topDividerVisibility:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1232
    sget v2, Lcig$l;->BaseCell_topDividerAlign:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1233
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1235
    sget v1, Lcig$l;->BaseCell_bottomDividerVisibility:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1236
    sget v2, Lcig$l;->BaseCell_bottomDividerAlign:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1237
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1239
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b()V

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    sget v2, Lcig$l;->BaseCell_dividerColor:I

    sget v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1252
    sget v1, Lcig$l;->BaseCell_indicator:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1253
    if-eqz v1, :cond_2

    sget v1, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1254
    new-instance v1, Lcry;

    invoke-direct {v1}, Lcry;-><init>()V

    .line 2055
    iput-boolean v5, v1, Lcry;->b:Z

    .line 1256
    sget v2, Lcig$l;->BaseCell_indicator_type:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 3047
    iput v2, v1, Lcry;->a:I

    .line 4043
    iget v2, v1, Lcry;->a:I

    .line 1258
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1259
    sget v2, Lcig$l;->BaseCell_indicator_count:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 4111
    iput v2, v1, Lcry;->i:I

    .line 1266
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Lcry;)V

    .line 160
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getStyleable()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(Landroid/content/res/TypedArray;)V

    .line 167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    :cond_4
    return-void

    .line 5043
    :cond_5
    iget v2, v1, Lcry;->a:I

    .line 1260
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1261
    sget v2, Lcig$l;->BaseCell_indicator_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5071
    iput-object v2, v1, Lcry;->d:Ljava/lang/String;

    goto :goto_0

    .line 6043
    :cond_6
    iget v2, v1, Lcry;->a:I

    .line 1262
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1263
    sget v2, Lcig$l;->BaseCell_indicator_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6071
    iput-object v2, v1, Lcry;->d:Ljava/lang/String;

    .line 1264
    sget v2, Lcig$l;->BaseCell_indicator_icon:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 6103
    iput v2, v1, Lcry;->h:I

    goto :goto_0
.end method

.method protected static a(Landroid/view/View;)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 375
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    new-instance v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getLayout()I

    move-result v6

    invoke-direct {v4, p0, v5, v6, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;-><init>(Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;Landroid/content/Context;ILandroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingTop()I

    move-result v4

    if-nez v4, :cond_1

    sget v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->c:I

    .line 200
    .local v3, "paddingTop":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingBottom()I

    move-result v4

    if-nez v4, :cond_2

    sget v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->c:I

    .line 201
    .local v0, "paddingBottom":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_3

    sget v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b:I

    .line 202
    .local v1, "paddingLeft":I
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_4

    sget v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b:I

    .line 203
    .local v2, "paddingRight":I
    :goto_3
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->setPadding(IIII)V

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 207
    sget v4, Lcig$e;->ui_common_cell_bg:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->setBackgroundResource(I)V

    .line 210
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->setClickable(Z)V

    .line 6221
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    .line 6222
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    .line 213
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b()V

    .line 214
    return-void

    .line 199
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingTop()I

    move-result v3

    goto :goto_0

    .line 200
    .restart local v3    # "paddingTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingBottom()I

    move-result v0

    goto :goto_1

    .line 201
    .restart local v0    # "paddingBottom":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingLeft()I

    move-result v1

    goto :goto_2

    .line 202
    .restart local v1    # "paddingLeft":I
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingRight()I

    move-result v2

    goto :goto_3
.end method

.method private a(II)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 451
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    .line 452
    .local v0, "old":I
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    .line 453
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/view/View;)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    sget v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    return-void
.end method


# virtual methods
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

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 394
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(Landroid/view/View;)I

    move-result v5

    .line 396
    :cond_0
    return v5
.end method

.method protected final a(I)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 465
    and-int/lit8 v1, p1, 0xc

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(II)Z

    move-result v0

    .line 466
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    if-eq v1, p2, :cond_0

    .line 467
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 468
    const/4 v0, 0x1

    .line 471
    :cond_0
    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->invalidate()V

    .line 474
    :cond_1
    return-void
.end method

.method protected abstract a(Landroid/content/res/TypedArray;)V
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
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 6352
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6353
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    .line 6354
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    .line 6356
    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 361
    return-void
.end method

.method protected final b(I)I
    .locals 1
    .param p1, "measureHeight"    # I

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1

    return v0
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
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 401
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 402
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->b(Landroid/view/View;)I

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 485
    and-int/lit8 v1, p1, 0xc

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a(II)Z

    move-result v0

    .line 486
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    if-eq v1, p2, :cond_0

    .line 487
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    .line 488
    const/4 v0, 0x1

    .line 491
    :cond_0
    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->invalidate()V

    .line 494
    :cond_1
    return-void
.end method

.method protected final c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
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
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 409
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6384
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6385
    new-instance v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>()V

    .line 6386
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 6387
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    move-object v0, v1

    .line 412
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>()V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 343
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
    .line 338
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getIndicatorView()Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 513
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v2, Lcig$f;->cell_indicator:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 514
    .local v0, "adsView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    if-nez v0, :cond_0

    .line 515
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not support this operate for it has no any indicator."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_0
    return-object v0
.end method

.method protected abstract getLayout()I
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

    .line 283
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 286
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getMeasuredWidth()I

    move-result v0

    .line 6303
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 6311
    int-to-float v4, v0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getMeasuredHeight()I

    move-result v5

    .line 6324
    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 6332
    int-to-float v3, v5

    int-to-float v4, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6330
    :cond_1
    :goto_1
    return-void

    .line 6305
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6308
    :pswitch_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->g:I

    int-to-float v1, v1

    int-to-float v3, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6326
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v0

    int-to-float v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 6329
    :pswitch_3
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->g:I

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v0

    int-to-float v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 6303
    .line 6324
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

.method protected final setContentCoordinate(I)V
    .locals 0
    .param p1, "coordinate"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->g:I

    .line 432
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->invalidate()V

    .line 524
    return-void
.end method

.method public setIndicator(Lcry;)V
    .locals 1
    .param p1, "viewObject"    # Lcry;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Lcry;)V

    .line 505
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
