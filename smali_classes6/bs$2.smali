.class final Lbs$2;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/Rect;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, Landroid/view/View;

    .line 1080
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    .line 1085
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 76
    return-void
.end method