.class public Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;
.super Landroid/view/View;
.source "SpreadView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:Landroid/animation/ObjectAnimator;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    .line 27
    iget v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    mul-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->c:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->d:Landroid/graphics/Bitmap;

    .line 29
    const/16 v0, 0xfa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->g:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->i:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    .line 27
    iget v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    mul-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->c:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->d:Landroid/graphics/Bitmap;

    .line 29
    const/16 v0, 0xfa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->g:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->i:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    .line 27
    iget v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->b:I

    mul-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->c:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->d:Landroid/graphics/Bitmap;

    .line 29
    const/16 v0, 0xfa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->g:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->i:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 62
    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 64
    .local v1, "pvhX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 66
    .local v2, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 68
    .local v3, "pvhZ":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    aput-object v3, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->f:Landroid/animation/ObjectAnimator;

    .line 71
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a:Landroid/graphics/Paint;

    .line 72
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lhdn$g;->beacon_detect_oval:I

    .line 75
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->d:Landroid/graphics/Bitmap;

    .line 77
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->i:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0, v8}, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->setBackgroundColor(I)V

    .line 80
    return-void

    .line 62
    .line 64
    .line 66
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "alpha":I
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 88
    .local v3, "startWidth":I
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v1, "dst":Landroid/graphics/Rect;
    iget v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    add-int/2addr v4, v3

    rsub-int/lit8 v4, v4, 0x0

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 91
    iget v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    add-int/2addr v4, v3

    rsub-int/lit8 v4, v4, 0x0

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 92
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 93
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->e:I

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 94
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->d:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/device/beacon/SpreadView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "alpha":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v3    # "startWidth":I
    :cond_0
    return-void
.end method
