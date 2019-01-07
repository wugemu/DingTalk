.class public final Ledp;
.super Ljava/lang/Object;
.source "DtTagStyle.java"


# instance fields
.field public a:Ledq;

.field public b:Ledo;

.field protected c:I

.field protected d:I

.field protected e:Landroid/graphics/drawable/Drawable;

.field protected f:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Ledq;Ledo;)V
    .locals 0
    .param p1, "theme"    # Ledq;
    .param p2, "size"    # Ledo;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ledp;->a:Ledq;

    .line 29
    iput-object p2, p0, Ledp;->b:Ledo;

    .line 31
    invoke-virtual {p0}, Ledp;->a()V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v8, 0x10100a7

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    .line 1047
    new-array v0, v7, [[I

    .line 1048
    new-array v1, v6, [I

    aput v8, v1, v5

    aput-object v1, v0, v5

    .line 1049
    new-array v1, v5, [I

    aput-object v1, v0, v6

    .line 1051
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1052
    iget-object v2, p0, Ledp;->a:Ledq;

    invoke-interface {v2}, Ledq;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1053
    iget-object v2, p0, Ledp;->a:Ledq;

    invoke-interface {v2}, Ledq;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1054
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1055
    iget-object v3, p0, Ledp;->a:Ledq;

    invoke-interface {v3}, Ledq;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1056
    iget-object v3, p0, Ledp;->a:Ledq;

    invoke-interface {v3}, Ledq;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1058
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1059
    new-array v1, v6, [[I

    .line 1060
    new-array v3, v5, [I

    aput-object v3, v1, v5

    .line 1061
    new-array v3, v6, [I

    iget-object v4, p0, Ledp;->a:Ledq;

    invoke-interface {v4}, Ledq;->b()I

    move-result v4

    aput v4, v3, v5

    .line 1062
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1064
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1065
    aget-object v0, v0, v6

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1067
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Ledp;->e:Landroid/graphics/drawable/Drawable;

    .line 1078
    :goto_0
    new-array v0, v7, [[I

    .line 1079
    new-array v1, v6, [I

    aput v8, v1, v5

    aput-object v1, v0, v5

    .line 1080
    new-array v1, v5, [I

    aput-object v1, v0, v6

    .line 1082
    new-array v1, v7, [I

    iget-object v2, p0, Ledp;->a:Ledq;

    invoke-interface {v2}, Ledq;->d()I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Ledp;->a:Ledq;

    invoke-interface {v2}, Ledq;->c()I

    move-result v2

    aput v2, v1, v6

    .line 1083
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Ledp;->f:Landroid/content/res/ColorStateList;

    .line 2041
    iget-object v0, p0, Ledp;->b:Ledo;

    invoke-interface {v0}, Ledo;->a()I

    move-result v0

    iput v0, p0, Ledp;->c:I

    .line 2042
    iget-object v0, p0, Ledp;->b:Ledo;

    invoke-interface {v0}, Ledo;->b()I

    move-result v0

    iput v0, p0, Ledp;->d:I

    .line 38
    return-void

    .line 1069
    :cond_0
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1070
    aget-object v4, v0, v5

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1071
    aget-object v0, v0, v6

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1072
    iput-object v3, p0, Ledp;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ledp;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ledp;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Ledp;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ledp;->d:I

    return v0
.end method
