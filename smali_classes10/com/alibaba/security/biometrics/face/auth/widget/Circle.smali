.class public Lcom/alibaba/security/biometrics/face/auth/widget/Circle;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field private d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->f:I

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->g:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->i:F

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->j:Z

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->k:Z

    new-instance v0, Lhxo;

    invoke-direct {v0, p0}, Lhxo;-><init>(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->l:Ljava/lang/Runnable;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->a:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->b:F

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->c:F

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->f:I

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->g:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->i:F

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->j:Z

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->k:Z

    new-instance v0, Lhxo;

    invoke-direct {v0, p0}, Lhxo;-><init>(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->l:Ljava/lang/Runnable;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->a:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->b:F

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->c:F

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->a()V

    sget-object v0, Lhyx$i;->circle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lhyv;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->f:I

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lhyv;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->g:I

    sget v1, Lhyx$i;->circle_facelivnesssdk_process_width:I

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lhyx$i;->circle_facelivnesssdk_color:I

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v3, Lhyx$i;->circle_facelivnesssdk_process_color:I

    const v4, -0xffff01

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v4, Lhyx$i;->circle_facelivnesssdk_interval:I

    const/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    .line 1000
    iput v1, v5, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->d:I

    iget-object v6, v5, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->h:Landroid/graphics/Paint;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v5, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->i:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 0
    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    .line 2000
    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 0
    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    .line 3000
    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 0
    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    .line 4000
    iput v4, v1, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->g:I

    .line 0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->h:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;-><init>(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V
    .locals 0

    .prologue
    .line 0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v1, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->f:I

    int-to-float v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v5, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v1, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->f:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v5, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v1, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget v0, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->f:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    iget-object v5, v0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    :cond_0
    invoke-static {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->d:Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle$a;->a(II)V

    return-void
.end method
