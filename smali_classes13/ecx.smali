.class public final Lecx;
.super Ljava/lang/Object;
.source "IconUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecx$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    sget v0, Lecj$d;->ui_common_red_dot_icon:I

    invoke-static {v0}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lecx;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mark"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lecx$a;

    invoke-direct {v3, p1}, Lecx$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
