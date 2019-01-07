.class public final Lak;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static final a:Lan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    sput-object v0, Lak;->a:Lan;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    sput-object v0, Lak;->a:Lan;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 41
    sget-object v0, Lak;->a:Lan;

    invoke-interface {v0, p0}, Lan;->a(Landroid/widget/ImageView;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 56
    sget-object v0, Lak;->a:Lan;

    invoke-interface {v0, p0, p1}, Lan;->a(Landroid/widget/ImageView;Landroid/animation/Animator;)V

    .line 57
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 48
    sget-object v0, Lak;->a:Lan;

    invoke-interface {v0, p0, p1}, Lan;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 49
    return-void
.end method
