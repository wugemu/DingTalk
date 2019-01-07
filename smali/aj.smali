.class public final Laj;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# static fields
.field private static final a:Lai$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lah$a;

    invoke-direct {v0}, Lah$a;-><init>()V

    sput-object v0, Laj;->a:Lai$a;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lag$a;

    invoke-direct {v0}, Lag$a;-><init>()V

    sput-object v0, Laj;->a:Lai$a;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Lai;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 37
    sget-object v0, Laj;->a:Lai$a;

    invoke-interface {v0, p0, p1, p2}, Lai$a;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Lai;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 41
    sget-object v0, Laj;->a:Lai$a;

    invoke-interface {v0, p0}, Lai$a;->a(Landroid/view/View;)V

    .line 42
    return-void
.end method
