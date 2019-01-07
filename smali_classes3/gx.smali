.class public final Lgx;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgx$i;,
        Lgx$h;,
        Lgx$g;,
        Lgx$f;,
        Lgx$e;,
        Lgx$d;,
        Lgx$c;,
        Lgx$b;,
        Lgx$j;,
        Lgx$l;,
        Lgx$k;,
        Lgx$a;
    }
.end annotation


# static fields
.field public static final a:Lgx$j;


# instance fields
.field public final b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public c:I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1640
    new-instance v0, Lgx$i;

    invoke-direct {v0}, Lgx$i;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    .line 1658
    :goto_0
    return-void

    .line 1641
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1642
    new-instance v0, Lgx$h;

    invoke-direct {v0}, Lgx$h;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1643
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 1644
    new-instance v0, Lgx$g;

    invoke-direct {v0}, Lgx$g;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1645
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1646
    new-instance v0, Lgx$f;

    invoke-direct {v0}, Lgx$f;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1647
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 1648
    new-instance v0, Lgx$e;

    invoke-direct {v0}, Lgx$e;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1649
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 1650
    new-instance v0, Lgx$d;

    invoke-direct {v0}, Lgx$d;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1651
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 1652
    new-instance v0, Lgx$c;

    invoke-direct {v0}, Lgx$c;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1653
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 1654
    new-instance v0, Lgx$b;

    invoke-direct {v0}, Lgx$b;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0

    .line 1656
    :cond_7
    new-instance v0, Lgx$j;

    invoke-direct {v0}, Lgx$j;-><init>()V

    sput-object v0, Lgx;->a:Lgx$j;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    const/4 v0, -0x1

    iput v0, p0, Lgx;->c:I

    .line 2072
    iput-object p1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2073
    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgx;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2082
    new-instance v0, Lgx;

    invoke-direct {v0, p0}, Lgx;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public static a(Lgx;)Lgx;
    .locals 1
    .param p0, "info"    # Lgx;

    .prologue
    .line 2145
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lgx;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 2338
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2339
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2515
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 2516
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 2154
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2155
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2895
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2896
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "collectionItemInfo"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3097
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast p1, Lgx$l;

    .end local p1    # "collectionItemInfo":Ljava/lang/Object;
    iget-object v2, p1, Lgx$l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgx$j;->b(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V

    .line 3098
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 2578
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 2579
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2659
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lgx$j;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method

.method public final a(Lgx$a;)Z
    .locals 3
    .param p1, "action"    # Lgx$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2371
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v2, p1, Lgx$a;->E:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgx$j;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2530
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2531
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2260
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2261
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 2919
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2920
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 2626
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2627
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2684
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lgx$j;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2539
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2540
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 2482
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2483
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2967
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2968
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 2650
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 2651
    return-void
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2554
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2555
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "visibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2675
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Lgx$j;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 2676
    return-void
.end method

.method public final e(Z)V
    .locals 2
    .param p1, "focused"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2700
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Lgx$j;->b(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 2701
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3737
    if-ne p0, p1, :cond_1

    .line 3754
    :cond_0
    :goto_0
    return v1

    .line 3740
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 3741
    goto :goto_0

    .line 3743
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 3744
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 3746
    check-cast v0, Lgx;

    .line 3747
    .local v0, "other":Lgx;
    iget-object v3, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v3, :cond_4

    .line 3748
    iget-object v3, v0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 3749
    goto :goto_0

    .line 3751
    :cond_4
    iget-object v3, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 3752
    goto :goto_0
.end method

.method public final f(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 2724
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2725
    return-void
.end method

.method public final g(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 2748
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2749
    return-void
.end method

.method public final h(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 2772
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2773
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 3732
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2796
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2797
    return-void
.end method

.method public final j(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .prologue
    .line 2844
    iget-object v0, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2845
    return-void
.end method

.method public final k(Z)V
    .locals 2
    .param p1, "dismissable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3630
    sget-object v0, Lgx;->a:Lgx$j;

    iget-object v1, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Lgx$j;->e(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 3631
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3760
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3764
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lgx;->a(Landroid/graphics/Rect;)V

    .line 3765
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "; boundsInParent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3767
    invoke-virtual {p0, v2}, Lgx;->c(Landroid/graphics/Rect;)V

    .line 3768
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "; boundsInScreen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3770
    const-string/jumbo v4, "; packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3880
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3770
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3771
    const-string/jumbo v4, "; className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3904
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3772
    const-string/jumbo v4, "; text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3928
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3772
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3773
    const-string/jumbo v4, "; contentDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3952
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3774
    const-string/jumbo v4, "; viewId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4009
    sget-object v5, Lgx;->a:Lgx$j;

    iget-object v6, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v6}, Lgx$j;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v5

    .line 3774
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    const-string/jumbo v4, "; checkable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4563
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v5

    .line 3776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3777
    const-string/jumbo v4, "; checked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4587
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    .line 3777
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3778
    const-string/jumbo v4, "; focusable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4611
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    .line 3778
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3779
    const-string/jumbo v4, "; focused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4635
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    .line 3779
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3780
    const-string/jumbo v4, "; selected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4709
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    .line 3780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3781
    const-string/jumbo v4, "; clickable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4733
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    .line 3781
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3782
    const-string/jumbo v4, "; longClickable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4757
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    .line 3782
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3783
    const-string/jumbo v4, "; enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4781
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    .line 3783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3784
    const-string/jumbo v4, "; password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4805
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    .line 3784
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3785
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "; scrollable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4829
    iget-object v5, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v5

    .line 3785
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    const-string/jumbo v4, "; ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5323
    iget-object v4, p0, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    .line 3788
    .local v1, "actionBits":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3789
    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    shl-int v0, v4, v5

    .line 3790
    .local v0, "action":I
    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v1, v4

    .line 5802
    sparse-switch v0, :sswitch_data_0

    .line 5840
    const-string/jumbo v4, "ACTION_UNKNOWN"

    .line 3791
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    if-eqz v1, :cond_0

    .line 3793
    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5804
    :sswitch_0
    const-string/jumbo v4, "ACTION_FOCUS"

    goto :goto_1

    .line 5806
    :sswitch_1
    const-string/jumbo v4, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    .line 5808
    :sswitch_2
    const-string/jumbo v4, "ACTION_SELECT"

    goto :goto_1

    .line 5810
    :sswitch_3
    const-string/jumbo v4, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    .line 5812
    :sswitch_4
    const-string/jumbo v4, "ACTION_CLICK"

    goto :goto_1

    .line 5814
    :sswitch_5
    const-string/jumbo v4, "ACTION_LONG_CLICK"

    goto :goto_1

    .line 5816
    :sswitch_6
    const-string/jumbo v4, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 5818
    :sswitch_7
    const-string/jumbo v4, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 5820
    :sswitch_8
    const-string/jumbo v4, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 5822
    :sswitch_9
    const-string/jumbo v4, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 5824
    :sswitch_a
    const-string/jumbo v4, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    .line 5826
    :sswitch_b
    const-string/jumbo v4, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    .line 5828
    :sswitch_c
    const-string/jumbo v4, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    .line 5830
    :sswitch_d
    const-string/jumbo v4, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    .line 5832
    :sswitch_e
    const-string/jumbo v4, "ACTION_CUT"

    goto :goto_1

    .line 5834
    :sswitch_f
    const-string/jumbo v4, "ACTION_COPY"

    goto :goto_1

    .line 5836
    :sswitch_10
    const-string/jumbo v4, "ACTION_PASTE"

    goto :goto_1

    .line 5838
    :sswitch_11
    const-string/jumbo v4, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 3796
    .end local v0    # "action":I
    :cond_1
    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5802
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
