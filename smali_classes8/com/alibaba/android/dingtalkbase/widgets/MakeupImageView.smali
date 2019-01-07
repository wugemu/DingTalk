.class public Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;
.super Landroid/widget/ImageView;
.source "MakeupImageView.java"


# static fields
.field private static a:Landroid/graphics/drawable/Drawable;

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static d:Landroid/graphics/drawable/Drawable;

.field private static final j:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;


# instance fields
.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 23
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 24
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->c:Landroid/graphics/drawable/Drawable;

    .line 25
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Left:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Right:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->j:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 41
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->l:I

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 41
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->l:I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 41
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->l:I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 63
    sget-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$e;->chat_arrow_left:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sput-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 66
    :cond_0
    sget-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$e;->chat_arrow_right:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sput-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_1
    const/4 v3, 0x0

    .line 73
    .local v3, "colorPicker":I
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->e:Landroid/graphics/Paint;

    .line 74
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$c;->bg_gray:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->e:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$e;->chatting_default_image:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 79
    if-eqz p2, :cond_4

    .line 80
    sget-object v8, Lcig$l;->MakeupImageView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v8, Lcig$l;->MakeupImageView_makeupDirection:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 84
    .local v6, "index":I
    if-ltz v6, :cond_2

    const/4 v8, 0x3

    if-ge v6, v8, :cond_2

    .line 85
    sget-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->j:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aget-object v8, v8, v6

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setMakeupDirection(Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;)V

    .line 88
    :cond_2
    sget v8, Lcig$l;->MakeupImageView_colorSelection:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 96
    .end local v6    # "index":I
    :goto_0
    :try_start_1
    sget v8, Lcig$l;->MakeupImageView_makeupHeight:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 98
    .local v5, "height":I
    if-lez v5, :cond_5

    .line 99
    int-to-float v8, v5

    invoke-static {p1, v8}, Lcms;->d(Landroid/content/Context;F)I

    move-result v5

    .line 103
    :goto_1
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setMakeupHeightDP(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .end local v5    # "height":I
    :goto_2
    :try_start_2
    sget v8, Lcig$l;->MakeupImageView_chatArrowLeft:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 109
    .local v1, "arrowLeft":I
    if-lez v1, :cond_6

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 114
    :goto_3
    sget v8, Lcig$l;->MakeupImageView_chatArrowRight:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 115
    .local v2, "arrowRight":I
    if-lez v2, :cond_7

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    .end local v1    # "arrowLeft":I
    .end local v2    # "arrowRight":I
    :goto_4
    sget v8, Lcig$l;->MakeupImageView_defaultImage:I

    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 125
    .local v4, "defaultImageId":I
    if-lez v4, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "defaultImageId":I
    :cond_4
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->ordinal()I

    move-result v8

    sget-object v9, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Left:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 134
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 145
    :goto_5
    return-void

    .line 101
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "height":I
    :cond_5
    const/16 v5, 0x10

    goto :goto_1

    .line 104
    .end local v5    # "height":I
    :catch_0
    move-exception v7

    .line 105
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v7    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "arrowLeft":I
    :cond_6
    :try_start_3
    sget-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->b:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->h:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 120
    .end local v1    # "arrowLeft":I
    :catch_1
    move-exception v7

    .line 121
    .restart local v7    # "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 118
    .end local v7    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "arrowLeft":I
    .restart local v2    # "arrowRight":I
    :cond_7
    :try_start_4
    sget-object v8, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 135
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "arrowLeft":I
    .end local v2    # "arrowRight":I
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->ordinal()I

    move-result v8

    sget-object v9, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Right:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 136
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->g:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 142
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 207
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 210
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->e:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 217
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 219
    .local v9, "height":I
    move v12, v13

    .line 220
    .local v12, "tWidth":I
    move v11, v9

    .line 222
    .local v11, "tHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getWidth()I

    move-result v1

    if-gt v13, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getHeight()I

    move-result v1

    if-le v9, v1, :cond_1

    .line 224
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v13

    div-float v15, v1, v2

    .line 225
    .local v15, "xRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    div-float v17, v1, v2

    .line 227
    .local v17, "yRatio":F
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 228
    .local v10, "ratio":F
    int-to-float v1, v13

    mul-float/2addr v1, v10

    float-to-int v12, v1

    .line 229
    int-to-float v1, v9

    mul-float/2addr v1, v10

    float-to-int v11, v1

    .line 233
    .end local v10    # "ratio":F
    .end local v15    # "xRatio":F
    .end local v17    # "yRatio":F
    :cond_1
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 234
    .local v14, "x":I
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 236
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    add-int v2, v14, v13

    add-int v3, v16, v9

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    .end local v9    # "height":I
    .end local v11    # "tHeight":I
    .end local v12    # "tWidth":I
    .end local v13    # "width":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    :cond_3
    return-void
.end method

.method public getMakeupDirection()Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    return-object v0
.end method

.method public getMakeupHeightDP()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->l:I

    return v0
.end method

.method public setColorSelection(I)V
    .locals 1
    .param p1, "selection"    # I

    .prologue
    .line 148
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method public setForgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 157
    return-void
.end method

.method public setLoadingDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 164
    if-lez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 167
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 161
    return-void
.end method

.method public setMakeupDirection(Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;)V
    .locals 0
    .param p1, "direction"    # Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->k:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 178
    return-void
.end method

.method public setMakeupHeightDP(I)V
    .locals 0
    .param p1, "makeupHeight"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->l:I

    .line 201
    return-void
.end method
