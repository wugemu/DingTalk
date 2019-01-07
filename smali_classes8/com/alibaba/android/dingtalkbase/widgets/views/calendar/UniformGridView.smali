.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;
.super Landroid/view/ViewGroup;
.source "UniformGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

.field b:I

.field c:I

.field d:[Landroid/view/View;

.field e:Landroid/view/View$OnClickListener;

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->e:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->e:Landroid/view/View$OnClickListener;

    .line 58
    sget-object v1, Lcig$l;->UniformGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->UniformGridView_horizontal_layout_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->f:I

    .line 60
    sget v1, Lcig$l;->UniformGridView_vertical_layout_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->g:I

    .line 61
    sget v1, Lcig$l;->UniformGridView_horizontal_space_proportion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->h:F

    .line 62
    sget v1, Lcig$l;->UniformGridView_vertical_space_proportion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->i:F

    .line 63
    sget v1, Lcig$l;->UniformGridView_horizontal_space:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->j:F

    .line 64
    sget v1, Lcig$l;->UniformGridView_vertical_space:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->k:F

    .line 65
    sget v1, Lcig$l;->UniformGridView_item_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->l:F

    .line 66
    sget v1, Lcig$l;->UniformGridView_item_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->m:F

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private static a(IIIFFF)Landroid/graphics/Point;
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "childCount"    # I
    .param p2, "layoutMode"    # I
    .param p3, "spaceProportion"    # F
    .param p4, "spaceSize"    # F
    .param p5, "itemSize"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 137
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v1, "point":Landroid/graphics/Point;
    if-lez p1, :cond_0

    if-gtz p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 141
    :cond_1
    if-ne p1, v3, :cond_2

    .line 142
    iput p0, v1, Landroid/graphics/Point;->x:I

    .line 143
    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    .line 147
    .local v2, "space":F
    const/4 v0, 0x0

    .line 148
    .local v0, "item":F
    if-nez p2, :cond_6

    .line 149
    cmpg-float v3, p3, v4

    if-gez v3, :cond_5

    .line 150
    const/4 p3, 0x0

    .line 154
    :cond_3
    :goto_1
    int-to-float v3, p0

    mul-float v2, v3, p3

    .line 155
    int-to-float v3, p0

    sub-float v0, v3, v2

    .line 184
    :cond_4
    :goto_2
    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 185
    int-to-float v3, p1

    div-float/2addr v0, v3

    .line 186
    float-to-int v3, v0

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 187
    float-to-int v3, v2

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 151
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v3

    if-lez v3, :cond_3

    .line 152
    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 156
    :cond_6
    if-ne p2, v3, :cond_9

    .line 157
    cmpg-float v3, p4, v4

    if-gez v3, :cond_7

    .line 158
    const/4 p4, 0x0

    .line 160
    :cond_7
    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    mul-float v2, p4, v3

    .line 161
    int-to-float v3, p0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    .line 162
    int-to-float v2, p0

    .line 164
    :cond_8
    int-to-float v3, p0

    sub-float v0, v3, v2

    goto :goto_2

    .line 165
    :cond_9
    const/4 v3, 0x2

    if-ne p2, v3, :cond_c

    .line 166
    cmpg-float v3, p5, v4

    if-gez v3, :cond_a

    .line 167
    const/4 p5, 0x0

    .line 169
    :cond_a
    int-to-float v3, p1

    mul-float v0, p5, v3

    .line 170
    int-to-float v3, p0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_b

    .line 171
    int-to-float v0, p0

    .line 173
    :cond_b
    int-to-float v3, p0

    sub-float v2, v3, v0

    goto :goto_2

    .line 174
    :cond_c
    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 175
    cmpg-float v3, p5, v4

    if-gez v3, :cond_d

    .line 176
    const/4 p5, 0x0

    .line 178
    :cond_d
    int-to-float v3, p1

    mul-float v0, p5, v3

    .line 179
    int-to-float v3, p0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_e

    .line 180
    int-to-float v0, p0

    .line 182
    :cond_e
    int-to-float v3, p0

    sub-float/2addr v3, v0

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 217
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    if-eqz v5, :cond_9

    .line 218
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->b()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 219
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-ge v0, v5, :cond_5

    .line 220
    const/4 v4, 0x0

    .local v4, "w":I
    :goto_1
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-ge v4, v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    aget-object v3, v5, v6

    .line 222
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v5, v4, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 223
    .local v2, "newV":Landroid/view/View;
    if-eq v3, v2, :cond_1

    .line 224
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    aput-object v2, v5, v6

    .line 225
    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->removeView(Landroid/view/View;)V

    .line 228
    :cond_0
    if-eqz v2, :cond_1

    .line 229
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->addView(Landroid/view/View;)V

    .line 220
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v2    # "newV":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->removeAllViews()V

    .line 239
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a()I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    .line 240
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->b()I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    .line 241
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-lez v5, :cond_4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-gtz v5, :cond_6

    .line 242
    :cond_4
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    .line 243
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    .line 244
    iput-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    .line 267
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->requestLayout()V

    .line 268
    return-void

    .line 246
    :cond_6
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    mul-int/2addr v5, v6

    new-array v5, v5, [Landroid/view/View;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    .line 247
    const/4 v0, 0x0

    .restart local v0    # "h":I
    :goto_3
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-ge v0, v5, :cond_5

    .line 248
    const/4 v4, 0x0

    .restart local v4    # "w":I
    :goto_4
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-ge v4, v5, :cond_8

    .line 249
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v5, v4, v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 250
    .restart local v2    # "newV":Landroid/view/View;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    aput-object v2, v5, v6

    .line 251
    if-eqz v2, :cond_7

    .line 252
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 253
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->addView(Landroid/view/View;)V

    .line 248
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 247
    .end local v2    # "newV":Landroid/view/View;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 262
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->removeAllViews()V

    .line 263
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    .line 264
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    .line 265
    iput-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    goto :goto_2
.end method

.method public getHorizontalLayoutMode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->f:I

    return v0
.end method

.method public getHorizontalSpace()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->j:F

    return v0
.end method

.method public getHorizontalSpaceProportion()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->h:F

    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->m:F

    return v0
.end method

.method public getItemWidth()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->l:F

    return v0
.end method

.method public getUniformGridViewAdapter()Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    return-object v0
.end method

.method public getVerticalLayoutMode()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->g:I

    return v0
.end method

.method public getVerticalSpace()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->k:F

    return v0
.end method

.method public getVerticalSpaceProportion()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->i:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 333
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-lez v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingTop()I

    move-result v12

    .line 336
    .local v12, "yPoint":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->f:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->h:F

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->j:F

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->l:F

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(IIIFFF)Landroid/graphics/Point;

    move-result-object v6

    .line 337
    .local v6, "childH":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->g:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->i:F

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->k:F

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->m:F

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(IIIFFF)Landroid/graphics/Point;

    move-result-object v7

    .line 338
    .local v7, "childV":Landroid/graphics/Point;
    const/4 v8, 0x0

    .local v8, "h":I
    :goto_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-ge v8, v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingLeft()I

    move-result v11

    .line 340
    .local v11, "xPoint":I
    const/4 v10, 0x0

    .local v10, "w":I
    :goto_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-ge v10, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v1, v8

    add-int/2addr v1, v10

    aget-object v9, v0, v1

    .line 342
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 343
    iget v0, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v11

    iget v1, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v12

    invoke-virtual {v9, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 345
    :cond_0
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 347
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 350
    .end local v6    # "childH":Landroid/graphics/Point;
    .end local v7    # "childV":Landroid/graphics/Point;
    .end local v8    # "h":I
    .end local v10    # "w":I
    .end local v11    # "xPoint":I
    .end local v12    # "yPoint":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 307
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 311
    .local v9, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 312
    move v12, v13

    .line 313
    .local v12, "widthResult":I
    move v8, v9

    .line 314
    .local v8, "heightResult":I
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-lez v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->f:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->h:F

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->j:F

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->l:F

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(IIIFFF)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 316
    .local v7, "childWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingTop()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->g:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->i:F

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->k:F

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->m:F

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(IIIFFF)Landroid/graphics/Point;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 317
    .local v6, "childHeight":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v10, v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    aget-object v11, v0, v10

    .line 319
    .local v11, "v":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 320
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    .line 317
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 325
    .end local v6    # "childHeight":I
    .end local v7    # "childWidth":I
    .end local v8    # "heightResult":I
    .end local v10    # "i":I
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "widthResult":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingRight()I

    move-result v1

    add-int v12, v0, v1

    .line 326
    .restart local v12    # "widthResult":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getPaddingBottom()I

    move-result v1

    add-int v8, v0, v1

    .line 328
    .restart local v8    # "heightResult":I
    :cond_2
    invoke-virtual {p0, v12, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setMeasuredDimension(II)V

    .line 329
    return-void
.end method

.method public setHorizontalLayoutMode(I)V
    .locals 0
    .param p1, "horizontalLayoutMode"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->f:I

    .line 76
    return-void
.end method

.method public setHorizontalSpace(F)V
    .locals 0
    .param p1, "horizontalSpace"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->j:F

    .line 108
    return-void
.end method

.method public setHorizontalSpaceProportion(F)V
    .locals 0
    .param p1, "horizontalSpaceProportion"    # F

    .prologue
    .line 91
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->h:F

    .line 92
    return-void
.end method

.method public setItemHeight(F)V
    .locals 0
    .param p1, "itemHeight"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->m:F

    .line 132
    return-void
.end method

.method public setItemWidth(F)V
    .locals 0
    .param p1, "itemWidth"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->l:F

    .line 124
    return-void
.end method

.method public setOnUniformGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    .line 193
    return-void
.end method

.method public setUniformGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    if-eq v0, p1, :cond_0

    .line 295
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a()V

    .line 298
    :cond_0
    return-void
.end method

.method public setVerticalLayoutMode(I)V
    .locals 0
    .param p1, "verticalLayoutMode"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->g:I

    .line 84
    return-void
.end method

.method public setVerticalSpace(F)V
    .locals 0
    .param p1, "verticalSpace"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->k:F

    .line 116
    return-void
.end method

.method public setVerticalSpaceProportion(F)V
    .locals 0
    .param p1, "verticalSpaceProportion"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->i:F

    .line 100
    return-void
.end method
