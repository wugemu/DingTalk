.class final Lw$f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:Lw$e;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 930
    sget-object v0, Lw;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1036
    new-instance v0, Lw$e;

    invoke-direct {v0}, Lw$e;-><init>()V

    iput-object v0, p0, Lw$f;->b:Lw$e;

    .line 1037
    return-void
.end method

.method public constructor <init>(Lw$f;)V
    .locals 3
    .param p1, "copy"    # Lw$f;

    .prologue
    .line 947
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 930
    sget-object v0, Lw;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 948
    if-eqz p1, :cond_2

    .line 949
    iget v0, p1, Lw$f;->a:I

    iput v0, p0, Lw$f;->a:I

    .line 950
    new-instance v0, Lw$e;

    iget-object v1, p1, Lw$f;->b:Lw$e;

    invoke-direct {v0, v1}, Lw$e;-><init>(Lw$e;)V

    iput-object v0, p0, Lw$f;->b:Lw$e;

    .line 951
    iget-object v0, p1, Lw$f;->b:Lw$e;

    invoke-static {v0}, Lw$e;->a(Lw$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lw$f;->b:Lw$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lw$f;->b:Lw$e;

    invoke-static {v2}, Lw$e;->a(Lw$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Lw$e;->a(Lw$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 954
    :cond_0
    iget-object v0, p1, Lw$f;->b:Lw$e;

    invoke-static {v0}, Lw$e;->b(Lw$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lw$f;->b:Lw$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lw$f;->b:Lw$e;

    invoke-static {v2}, Lw$e;->b(Lw$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Lw$e;->b(Lw$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 957
    :cond_1
    iget-object v0, p1, Lw$f;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 958
    iget-object v0, p1, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 959
    iget-boolean v0, p1, Lw$f;->e:Z

    iput-boolean v0, p0, Lw$f;->e:Z

    .line 961
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 992
    iget-object v1, p0, Lw$f;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 993
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lw$f;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 994
    .local v0, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lw$f;->b:Lw$e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Lw$e;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 995
    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lw$f;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1041
    new-instance v0, Lw;

    invoke-direct {v0, p0}, Lw;-><init>(Lw$f;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1046
    new-instance v0, Lw;

    invoke-direct {v0, p0}, Lw;-><init>(Lw$f;)V

    return-object v0
.end method
