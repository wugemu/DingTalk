.class public Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;,
        Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;,
        Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;,
        Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field protected a:Landroid/animation/ValueAnimator;

.field protected b:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

.field private h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->c:Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setWillNotDraw(Z)V

    .line 154
    new-instance v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    invoke-direct {v3, v5}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;-><init>(B)V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    .line 155
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e:Landroid/graphics/Paint;

    .line 156
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    .line 157
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 159
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a()V

    .line 164
    if-eqz p2, :cond_f

    .line 165
    sget-object v3, Leuj$n;->ShimmerFrameLayout:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Leuj$n;->ShimmerFrameLayout_auto_start:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    sget v3, Leuj$n;->ShimmerFrameLayout_auto_start:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setAutoStart(Z)V

    .line 170
    :cond_0
    sget v3, Leuj$n;->ShimmerFrameLayout_base_alpha:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    sget v3, Leuj$n;->ShimmerFrameLayout_base_alpha:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setBaseAlpha(F)V

    .line 173
    :cond_1
    sget v3, Leuj$n;->ShimmerFrameLayout_duration:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    sget v3, Leuj$n;->ShimmerFrameLayout_duration:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setDuration(I)V

    .line 176
    :cond_2
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_count:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatCount(I)V

    .line 179
    :cond_3
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_delay:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_delay:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatDelay(I)V

    .line 182
    :cond_4
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_mode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    sget v3, Leuj$n;->ShimmerFrameLayout_repeat_mode:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatMode(I)V

    .line 186
    :cond_5
    sget v3, Leuj$n;->ShimmerFrameLayout_angle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    sget v3, Leuj$n;->ShimmerFrameLayout_angle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 188
    .local v1, "angle":I
    sparse-switch v1, :sswitch_data_0

    .line 191
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->CW_0:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    .line 205
    .end local v1    # "angle":I
    :cond_6
    :goto_0
    sget v3, Leuj$n;->ShimmerFrameLayout_shape:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    sget v3, Leuj$n;->ShimmerFrameLayout_shape:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 207
    .local v2, "shape":I
    packed-switch v2, :pswitch_data_0

    .line 210
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->LINEAR:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .line 218
    .end local v2    # "shape":I
    :cond_7
    :goto_1
    sget v3, Leuj$n;->ShimmerFrameLayout_dropoff:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 219
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_dropoff:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    .line 221
    :cond_8
    sget v3, Leuj$n;->ShimmerFrameLayout_fixed_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 222
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_fixed_width:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    .line 224
    :cond_9
    sget v3, Leuj$n;->ShimmerFrameLayout_fixed_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 225
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_fixed_height:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    .line 227
    :cond_a
    sget v3, Leuj$n;->ShimmerFrameLayout_intensity:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 228
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_intensity:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    .line 230
    :cond_b
    sget v3, Leuj$n;->ShimmerFrameLayout_relative_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 231
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_relative_width:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->g:F

    .line 233
    :cond_c
    sget v3, Leuj$n;->ShimmerFrameLayout_relative_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 234
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_relative_height:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->h:F

    .line 236
    :cond_d
    sget v3, Leuj$n;->ShimmerFrameLayout_tilt:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 237
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget v4, Leuj$n;->ShimmerFrameLayout_tilt:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_f
    return-void

    .line 194
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "angle":I
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->CW_90:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 240
    .end local v1    # "angle":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 197
    .restart local v1    # "angle":I
    :sswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->CW_180:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    goto/16 :goto_0

    .line 200
    :sswitch_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->CW_270:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    goto/16 :goto_0

    .line 213
    .end local v1    # "angle":I
    .restart local v2    # "shape":I
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->RADIAL:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 188
    .line 207
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 944
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 947
    :goto_0
    return-object v0

    .line 946
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 947
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setMaskOffsetX(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setMaskOffsetY(I)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 617
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 619
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->r:Z

    .line 621
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->k:Z

    return v0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getWidth()I

    move-result v4

    .line 741
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getHeight()I

    move-result v0

    .line 743
    .local v0, "height":I
    :try_start_0
    invoke-static {v4, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 760
    :goto_0
    return-object v5

    .line 745
    :catch_0
    move-exception v5

    const-string/jumbo v1, "ShimmerFrameLayout failed to create working bitmap"

    .line 746
    .local v1, "logMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .local v2, "logMessageStringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " (width = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v5, ", height = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    const-string/jumbo v5, ")\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    .line 754
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string/jumbo v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 760
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 788
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->c()V

    .line 1795
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1797
    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1805
    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    .line 1808
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1810
    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    .line 791
    :cond_2
    return-void
.end method

.method private getLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$1;-><init>(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V

    return-object v0
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 888
    :goto_0
    return-object v3

    .line 820
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getWidth()I

    move-result v4

    .line 2056
    iget v5, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    if-lez v5, :cond_1

    iget v13, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    .line 821
    .local v13, "width":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getHeight()I

    move-result v4

    .line 2060
    iget v5, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    if-lez v5, :cond_2

    iget v11, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    .line 823
    .local v11, "height":I
    :goto_2
    invoke-static {v13, v11}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a(II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 824
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 826
    .local v10, "canvas":Landroid/graphics/Canvas;
    sget-object v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->a:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 831
    sget-object v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->b:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 834
    const/4 v15, 0x0

    .line 835
    .local v15, "x1":I
    const/16 v18, 0x0

    .line 836
    .local v18, "y1":I
    move/from16 v16, v13

    .line 837
    .local v16, "x2":I
    const/16 v19, 0x0

    .line 858
    .local v19, "y2":I
    :goto_3
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v3, v15

    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    .line 862
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a()[I

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    .line 863
    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b()[F

    move-result-object v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 881
    .end local v15    # "x1":I
    .end local v16    # "x2":I
    .end local v18    # "y1":I
    .end local v19    # "y2":I
    .local v2, "gradient":Landroid/graphics/Shader;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b:F

    div-int/lit8 v4, v13, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v11, 0x2

    int-to-float v5, v5

    invoke-virtual {v10, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 882
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 883
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 885
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    div-int/lit8 v12, v3, 0x2

    .line 886
    .local v12, "padding":I
    neg-int v3, v12

    int-to-float v4, v3

    neg-int v3, v12

    int-to-float v5, v3

    add-int v3, v13, v12

    int-to-float v6, v3

    add-int v3, v11, v12

    int-to-float v7, v3

    move-object v3, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 2056
    .end local v2    # "gradient":Landroid/graphics/Shader;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "height":I
    .end local v12    # "padding":I
    .end local v13    # "width":I
    :cond_1
    int-to-float v4, v4

    iget v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->g:F

    mul-float/2addr v3, v4

    float-to-int v13, v3

    goto/16 :goto_1

    .line 2060
    .restart local v13    # "width":I
    :cond_2
    int-to-float v4, v4

    iget v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->h:F

    mul-float/2addr v3, v4

    float-to-int v11, v3

    goto/16 :goto_2

    .line 840
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local v11    # "height":I
    :pswitch_0
    const/4 v15, 0x0

    .line 841
    .restart local v15    # "x1":I
    const/16 v18, 0x0

    .line 842
    .restart local v18    # "y1":I
    const/16 v16, 0x0

    .line 843
    .restart local v16    # "x2":I
    move/from16 v19, v11

    .line 844
    .restart local v19    # "y2":I
    goto :goto_3

    .line 846
    .end local v15    # "x1":I
    .end local v16    # "x2":I
    .end local v18    # "y1":I
    .end local v19    # "y2":I
    :pswitch_1
    move v15, v13

    .line 847
    .restart local v15    # "x1":I
    const/16 v18, 0x0

    .line 848
    .restart local v18    # "y1":I
    const/16 v16, 0x0

    .line 849
    .restart local v16    # "x2":I
    const/16 v19, 0x0

    .line 850
    .restart local v19    # "y2":I
    goto :goto_3

    .line 852
    .end local v15    # "x1":I
    .end local v16    # "x2":I
    .end local v18    # "y1":I
    .end local v19    # "y2":I
    :pswitch_2
    const/4 v15, 0x0

    .line 853
    .restart local v15    # "x1":I
    move/from16 v18, v11

    .line 854
    .restart local v18    # "y1":I
    const/16 v16, 0x0

    .line 855
    .restart local v16    # "x2":I
    const/16 v19, 0x0

    .restart local v19    # "y2":I
    goto/16 :goto_3

    .line 868
    .end local v15    # "x1":I
    .end local v16    # "x2":I
    .end local v18    # "y1":I
    .end local v19    # "y2":I
    :pswitch_3
    div-int/lit8 v14, v13, 0x2

    .line 869
    .local v14, "x":I
    div-int/lit8 v17, v11, 0x2

    .line 870
    .local v17, "y":I
    new-instance v2, Landroid/graphics/RadialGradient;

    int-to-float v3, v14

    move/from16 v0, v17

    int-to-float v4, v0

    .line 874
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v6, v6, v20

    double-to-float v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    .line 875
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    .line 876
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b()[F

    move-result-object v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .restart local v2    # "gradient":Landroid/graphics/Shader;
    goto/16 :goto_4

    .line 826
    .line 831
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getShimmerAnimation()Landroid/animation/Animator;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 894
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 930
    :goto_0
    return-object v2

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getWidth()I

    move-result v1

    .line 898
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getHeight()I

    move-result v0

    .line 899
    .local v0, "height":I
    sget-object v2, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->ordinal()I

    .line 902
    sget-object v2, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->b:[I

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 905
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    neg-int v3, v1

    invoke-virtual {v2, v3, v4, v1, v4}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a(IIII)V

    .line 918
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->n:I

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->l:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 919
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->l:I

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->n:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 920
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->m:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 921
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->o:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 922
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$2;-><init>(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 930
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 908
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    neg-int v3, v0

    invoke-virtual {v2, v4, v3, v4, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a(IIII)V

    goto :goto_1

    .line 911
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    neg-int v3, v1

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a(IIII)V

    goto :goto_1

    .line 914
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    neg-int v3, v0

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a(IIII)V

    goto :goto_1

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setMaskOffsetX(I)V
    .locals 1
    .param p1, "maskOffsetX"    # I

    .prologue
    .line 638
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->p:I

    if-ne v0, p1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->p:I

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->invalidate()V

    goto :goto_0
.end method

.method private setMaskOffsetY(I)V
    .locals 1
    .param p1, "maskOffsetY"    # I

    .prologue
    .line 651
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->q:I

    if-ne v0, p1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->q:I

    .line 655
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setAutoStart(Z)V

    .line 252
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setDuration(I)V

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatCount(I)V

    .line 254
    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatDelay(I)V

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setRepeatMode(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;->CW_0:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->LINEAR:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput v3, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput v4, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->g:F

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput v4, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->h:F

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b:F

    .line 267
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    invoke-direct {v0, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;-><init>(B)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->h:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;

    .line 269
    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->setBaseAlpha(F)V

    .line 271
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 272
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 602
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->r:Z

    if-eqz v1, :cond_0

    .line 608
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getShimmerAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 606
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->r:Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 692
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 693
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 1726
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1727
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    .line 1729
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->j:Landroid/graphics/Bitmap;

    .line 1733
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 1734
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    .line 1736
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->i:Landroid/graphics/Bitmap;

    .line 1711
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1715
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1765
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1766
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1716
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1719
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1771
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1772
    if-eqz v2, :cond_5

    .line 1776
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->p:I

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->q:I

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->p:I

    .line 1779
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->q:I

    .line 1780
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1776
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1781
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1782
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1784
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->p:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->q:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1720
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAngle()Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    return-object v0
.end method

.method public getBaseAlpha()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDropoff()F
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->l:I

    return v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    return v0
.end method

.method public getIntensity()F
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    return v0
.end method

.method public getMaskShape()Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    return-object v0
.end method

.method public getRelativeHeight()F
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->h:F

    return v0
.end method

.method public getRelativeWidth()F
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->g:F

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->m:I

    return v0
.end method

.method public getRepeatDelay()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->n:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->o:I

    return v0
.end method

.method public getTilt()F
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 660
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 665
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->c()V

    .line 683
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 687
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 688
    return-void
.end method

.method public setAngle(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;)V
    .locals 1
    .param p1, "angle"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput-object p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

    .line 447
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 448
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->k:Z

    .line 292
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 293
    return-void
.end method

.method public setBaseAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e:Landroid/graphics/Paint;

    .line 1700
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 310
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 312
    return-void
.end method

.method public setDropoff(F)V
    .locals 1
    .param p1, "dropoff"    # F

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    .line 474
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 475
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->l:I

    .line 332
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 333
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 1
    .param p1, "fixedHeight"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->e:I

    .line 512
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 513
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 1
    .param p1, "fixedWidth"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->d:I

    .line 493
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 494
    return-void
.end method

.method public setIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    .line 535
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 536
    return-void
.end method

.method public setMaskShape(Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;)V
    .locals 1
    .param p1, "shape"    # Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput-object p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .line 416
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 417
    return-void
.end method

.method public setRelativeHeight(I)V
    .locals 2
    .param p1, "relativeHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    int-to-float v1, p1

    iput v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->h:F

    .line 575
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 576
    return-void
.end method

.method public setRelativeWidth(I)V
    .locals 2
    .param p1, "relativeWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    int-to-float v1, p1

    iput v1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->g:F

    .line 555
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 556
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->m:I

    .line 353
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 354
    return-void
.end method

.method public setRepeatDelay(I)V
    .locals 0
    .param p1, "repeatDelay"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->n:I

    .line 373
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 374
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->o:I

    .line 396
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 397
    return-void
.end method

.method public setTilt(F)V
    .locals 1
    .param p1, "tilt"    # F

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->g:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;

    iput p1, v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->b:F

    .line 594
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;->e()V

    .line 595
    return-void
.end method
