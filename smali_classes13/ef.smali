.class final Lef;
.super Lee;
.source "DrawableWrapperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lee;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-static {}, Lef;->d()V

    .line 48
    return-void
.end method

.method constructor <init>(Led$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Led$a;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lee;-><init>(Led$a;Landroid/content/res/Resources;)V

    .line 52
    invoke-static {}, Lef;->d()V

    .line 53
    return-void
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 160
    sget-object v1, Lef;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 162
    :try_start_0
    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v2, "isProjected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lef;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 163
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 164
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DrawableWrapperApi21"

    const-string/jumbo v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method final b()Led$a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    new-instance v0, Lef$a;

    iget-object v1, p0, Lef;->b:Led$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lef$a;-><init>(Led$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 115
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    .line 116
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    .line 117
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 122
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public final getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 67
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 68
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 58
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 63
    return-void
.end method

.method public final setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 104
    invoke-super {p0, p1}, Lee;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lef;->invalidateSelf()V

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lef;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lee;->setTint(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 77
    invoke-virtual {p0}, Lef;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lee;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 95
    invoke-virtual {p0}, Lef;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lee;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lef;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
