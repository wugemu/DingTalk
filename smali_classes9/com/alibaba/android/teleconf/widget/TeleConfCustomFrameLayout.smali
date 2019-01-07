.class public Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TeleConfCustomFrameLayout.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:F

.field public c:F

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:Levr;

.field private n:I

.field private o:I

.field private p:Landroid/view/ScaleGestureDetector;

.field private q:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    .line 50
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    .line 51
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->d:Z

    .line 52
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->e:Z

    .line 57
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->h:I

    .line 62
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 67
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    .line 72
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->p:Landroid/view/ScaleGestureDetector;

    .line 73
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->q:Landroid/view/GestureDetector;

    .line 1089
    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    .line 1090
    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    .line 1091
    invoke-static {p1}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a(Landroid/content/Context;)I

    move-result v2

    .line 1092
    if-lez v2, :cond_0

    .line 1093
    sub-int/2addr v0, v2

    .line 1095
    :cond_0
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    .line 1096
    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    .line 1098
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->p:Landroid/view/ScaleGestureDetector;

    .line 1099
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->q:Landroid/view/GestureDetector;

    .line 1119
    invoke-virtual {p0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1120
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    iput v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    .line 86
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v4, -0x1

    .line 362
    .local v4, "statusHeight":I
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 364
    .local v3, "object":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 369
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "height":I
    .end local v3    # "object":Ljava/lang/Object;
    :goto_0
    return v4

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;)Levr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    iget-boolean v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->d:Z

    if-nez v9, :cond_0

    .line 155
    const/4 v9, 0x1

    .line 214
    :goto_0
    return v9

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    .line 158
    .local v5, "scaleFactor":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    const/high16 v10, 0x40800000    # 4.0f

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_8

    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 163
    :cond_2
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    .line 165
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    div-float v5, v9, v10

    .line 166
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    .line 175
    :goto_1
    sget-object v9, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "Scale: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ","

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    .line 180
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    .line 181
    .local v8, "y":F
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    int-to-float v9, v9

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 182
    .local v2, "dstWidth":I
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    int-to-float v9, v9

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 184
    .local v1, "dstHeight":I
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    mul-float/2addr v9, v5

    sub-float v9, v7, v9

    float-to-int v3, v9

    .line 185
    .local v3, "left":I
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    mul-float/2addr v9, v5

    sub-float v9, v8, v9

    float-to-int v6, v9

    .line 186
    .local v6, "top":I
    add-int v4, v3, v2

    .line 187
    .local v4, "right":I
    add-int v0, v6, v1

    .line 189
    .local v0, "bottom":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_6

    .line 190
    if-lez v3, :cond_3

    .line 191
    const/4 v3, 0x0

    .line 192
    add-int/lit8 v4, v2, 0x0

    .line 194
    :cond_3
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    if-ge v4, v9, :cond_4

    .line 195
    iget v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    .line 196
    sub-int v3, v4, v2

    .line 198
    :cond_4
    if-lez v6, :cond_5

    .line 199
    const/4 v6, 0x0

    .line 200
    add-int/lit8 v0, v1, 0x0

    .line 202
    :cond_5
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    if-ge v0, v9, :cond_6

    .line 203
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    .line 204
    sub-int v6, v0, v1

    .line 208
    :cond_6
    iget-object v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    if-eqz v9, :cond_7

    .line 209
    iget-object v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    sget-object v10, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_ZOOM:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    invoke-virtual {v10}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ordinal()I

    invoke-interface {v9, v3, v6, v4, v0}, Levr;->a(IIII)V

    .line 211
    :cond_7
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    .line 212
    iput v6, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    .line 214
    .end local v0    # "bottom":I
    .end local v1    # "dstHeight":I
    .end local v2    # "dstWidth":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 167
    :cond_9
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v9, v5

    const/high16 v10, 0x40800000    # 4.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    .line 169
    const/high16 v9, 0x40800000    # 4.0f

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    div-float v5, v9, v10

    .line 170
    const/high16 v9, 0x40800000    # 4.0f

    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    goto/16 :goto_1

    .line 172
    :cond_a
    iget v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v9, v5

    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 225
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/high16 v11, -0x40800000    # -1.0f

    .line 229
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->q:Landroid/view/GestureDetector;

    invoke-virtual {v10, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v12

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    .line 236
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->p:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    const/4 v8, 0x0

    .local v8, "x":F
    const/4 v9, 0x0

    .line 239
    .local v9, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 241
    .local v5, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 243
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v8, v10

    .line 244
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    :cond_2
    int-to-float v10, v5

    div-float/2addr v8, v10

    .line 247
    int-to-float v10, v5

    div-float/2addr v9, v10

    .line 252
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->h:I

    if-eq v5, v10, :cond_3

    .line 253
    iput v8, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 254
    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    .line 256
    :cond_3
    iput v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->h:I

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    int-to-float v10, v10

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    .line 262
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    int-to-float v10, v10

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    goto :goto_0

    .line 265
    :pswitch_1
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    .line 266
    iput v8, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 267
    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    .line 269
    :cond_4
    iget-boolean v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->e:Z

    if-eqz v10, :cond_0

    .line 273
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    sub-float v1, v8, v10

    .line 274
    .local v1, "dx":F
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    sub-float v2, v9, v10

    .line 1347
    .local v2, "dy":F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 275
    const/high16 v11, 0x41a00000    # 20.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 276
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    float-to-int v4, v10

    .line 277
    .local v4, "left":I
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    float-to-int v7, v10

    .line 278
    .local v7, "top":I
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    add-int v6, v4, v10

    .line 279
    .local v6, "right":I
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    add-int v0, v7, v10

    .line 280
    .local v0, "bottom":I
    if-lez v4, :cond_b

    .line 281
    const/4 v4, 0x0

    .line 282
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    add-int/lit8 v6, v10, 0x0

    .line 288
    :cond_5
    :goto_2
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    if-ge v6, v10, :cond_c

    .line 289
    iget v6, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    .line 290
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    sub-int v4, v6, v10

    .line 296
    :cond_6
    :goto_3
    if-lez v7, :cond_d

    .line 297
    const/4 v7, 0x0

    .line 298
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    add-int/lit8 v0, v10, 0x0

    .line 304
    :cond_7
    :goto_4
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    if-ge v0, v10, :cond_e

    .line 305
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    .line 306
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    sub-int v7, v0, v10

    .line 312
    :cond_8
    :goto_5
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    if-eqz v10, :cond_9

    .line 313
    iget-object v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    sget-object v11, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_DRAG:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ordinal()I

    invoke-interface {v10, v4, v7, v6, v0}, Levr;->a(IIII)V

    .line 316
    :cond_9
    iput v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    .line 317
    iput v7, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    .line 319
    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_a
    iput v8, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 320
    iput v9, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    goto/16 :goto_0

    .line 283
    .restart local v0    # "bottom":I
    .restart local v4    # "left":I
    .restart local v6    # "right":I
    .restart local v7    # "top":I
    :cond_b
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    if-le v10, v11, :cond_5

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    sub-int/2addr v10, v11

    if-ge v4, v10, :cond_5

    .line 284
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    sub-int v4, v10, v11

    .line 285
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    add-int v6, v4, v10

    goto :goto_2

    .line 291
    :cond_c
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    if-le v10, v11, :cond_6

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    if-le v6, v10, :cond_6

    .line 292
    iget v6, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    .line 293
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->n:I

    sub-int v4, v6, v10

    goto :goto_3

    .line 299
    :cond_d
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    if-le v10, v11, :cond_7

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    sub-int/2addr v10, v11

    if-ge v7, v10, :cond_7

    .line 300
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    sub-int v7, v10, v11

    .line 301
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    add-int v0, v7, v10

    goto :goto_4

    .line 307
    :cond_e
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    iget v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    if-le v10, v11, :cond_8

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    if-le v0, v10, :cond_8

    .line 308
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    .line 309
    iget v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->o:I

    sub-int v7, v0, v10

    goto :goto_5

    .line 324
    .end local v0    # "bottom":I
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :pswitch_2
    iput v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    iput v11, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 327
    :pswitch_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->h:I

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnClickListener(Levr;)V
    .locals 0
    .param p1, "l"    # Levr;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    .line 125
    return-void
.end method
