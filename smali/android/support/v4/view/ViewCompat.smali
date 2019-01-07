.class public final Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompat$i;,
        Landroid/support/v4/view/ViewCompat$h;,
        Landroid/support/v4/view/ViewCompat$g;,
        Landroid/support/v4/view/ViewCompat$f;,
        Landroid/support/v4/view/ViewCompat$e;,
        Landroid/support/v4/view/ViewCompat$d;,
        Landroid/support/v4/view/ViewCompat$c;,
        Landroid/support/v4/view/ViewCompat$b;,
        Landroid/support/v4/view/ViewCompat$a;,
        Landroid/support/v4/view/ViewCompat$j;,
        Landroid/support/v4/view/ViewCompat$ScrollIndicators;,
        Landroid/support/v4/view/ViewCompat$NestedScrollType;,
        Landroid/support/v4/view/ViewCompat$ScrollAxis;,
        Landroid/support/v4/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Landroid/support/v4/view/ViewCompat$LayoutDirectionMode;,
        Landroid/support/v4/view/ViewCompat$LayerType;,
        Landroid/support/v4/view/ViewCompat$AccessibilityLiveRegion;,
        Landroid/support/v4/view/ViewCompat$ImportantForAccessibility;,
        Landroid/support/v4/view/ViewCompat$OverScroll;,
        Landroid/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Landroid/support/v4/view/ViewCompat$FocusRealDirection;,
        Landroid/support/v4/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/ViewCompat$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1587
    new-instance v0, Landroid/support/v4/view/ViewCompat$i;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    .line 1607
    :goto_0
    return-void

    .line 1588
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1589
    new-instance v0, Landroid/support/v4/view/ViewCompat$h;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1590
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1591
    new-instance v0, Landroid/support/v4/view/ViewCompat$g;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1592
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1593
    new-instance v0, Landroid/support/v4/view/ViewCompat$f;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1594
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 1595
    new-instance v0, Landroid/support/v4/view/ViewCompat$e;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1596
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 1597
    new-instance v0, Landroid/support/v4/view/ViewCompat$d;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1598
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 1599
    new-instance v0, Landroid/support/v4/view/ViewCompat$c;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1600
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 1601
    new-instance v0, Landroid/support/v4/view/ViewCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1602
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    .line 1603
    new-instance v0, Landroid/support/v4/view/ViewCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto :goto_0

    .line 1605
    :cond_8
    new-instance v0, Landroid/support/v4/view/ViewCompat$j;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3367
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->s(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static B(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3392
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->B(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static C(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3453
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->q(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static D(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3460
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->t(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static E(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3469
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static F(Landroid/view/View;)Landroid/view/Display;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3554
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->p(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1652
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Lgv;)Lgv;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Lgv;

    .prologue
    .line 2885
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Lgv;)Lgv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2498
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3516
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;II)V

    .line 3517
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1862
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;IIII)V

    .line 1863
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2074
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2075
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2991
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 2992
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2155
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 2156
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 3015
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3016
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3441
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3442
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2970
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2971
    return-void
.end method

.method public static a(Landroid/view/View;Lfz;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Lfz;

    .prologue
    .line 1798
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Lfz;)V

    .line 1799
    return-void
.end method

.method public static a(Landroid/view/View;Lgk;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Lgk;

    .prologue
    .line 2869
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Lgk;)V

    .line 2870
    return-void
.end method

.method public static a(Landroid/view/View;Lgm;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pointerIcon"    # Lgm;

    .prologue
    .line 3540
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Lgm;)V

    .line 3541
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1876
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1877
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 1893
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1894
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "hasTransientState"    # Z

    .prologue
    .line 1831
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;Z)V

    .line 1832
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .prologue
    .line 2825
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/ViewGroup;Z)V

    .line 2826
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1620
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Lgv;)Lgv;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Lgv;

    .prologue
    .line 2902
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->b(Landroid/view/View;Lgv;)Lgv;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2514
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2515
    return-void
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2386
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$j;->b(Landroid/view/View;IIII)V

    .line 2387
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2846
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2847
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 1808
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat$j;->C(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1634
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2615
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2616
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .prologue
    .line 1936
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;I)V

    .line 1937
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1820
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1844
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->c(Landroid/view/View;)V

    .line 1845
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2628
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2629
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .prologue
    .line 2345
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/view/ViewCompat$j;->b(Landroid/view/View;I)V

    .line 2346
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1912
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .prologue
    .line 2747
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->a(Landroid/view/View;F)V

    .line 2748
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 3417
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->d(Landroid/view/View;I)V

    .line 3418
    return-void
.end method

.method public static f(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2171
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationZ"    # F

    .prologue
    .line 2763
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->b(Landroid/view/View;F)V

    .line 2764
    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 3426
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$j;->c(Landroid/view/View;I)V

    .line 3427
    return-void
.end method

.method public static g(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2203
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->e(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2357
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2369
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2461
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2472
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)Lgr;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2482
    sget-object v1, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    .line 4677
    iget-object v0, v1, Landroid/support/v4/view/ViewCompat$j;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 4678
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Landroid/support/v4/view/ViewCompat$j;->a:Ljava/util/WeakHashMap;

    .line 4680
    :cond_0
    iget-object v0, v1, Landroid/support/v4/view/ViewCompat$j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgr;

    .line 4681
    if-nez v0, :cond_1

    .line 4682
    new-instance v0, Lgr;

    invoke-direct {v0, p0}, Lgr;-><init>(Landroid/view/View;)V

    .line 4683
    iget-object v1, v1, Landroid/support/v4/view/ViewCompat$j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    :cond_1
    return-object v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2716
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2756
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->v(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2772
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->w(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2797
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2804
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->n(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2812
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->h(Landroid/view/View;)V

    .line 2813
    return-void
.end method

.method public static s(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 2833
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static t(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2950
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2960
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->o(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2980
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->z(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static w(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3002
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->A(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static x(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3050
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->x(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static y(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3077
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->y(Landroid/view/View;)V

    .line 3078
    return-void
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3359
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewCompat$j;->r(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
