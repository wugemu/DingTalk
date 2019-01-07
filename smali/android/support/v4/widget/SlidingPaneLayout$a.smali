.class final Landroid/support/v4/widget/SlidingPaneLayout$a;
.super Lfz;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 1537
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lfz;-><init>()V

    .line 1538
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1586
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1571
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1573
    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1574
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    .prologue
    .line 1542
    invoke-static {p2}, Lgx;->a(Lgx;)Lgx;

    move-result-object v4

    .line 1543
    .local v4, "superNode":Lgx;
    invoke-super {p0, p1, v4}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 3596
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/graphics/Rect;

    .line 3598
    invoke-virtual {v4, v5}, Lgx;->a(Landroid/graphics/Rect;)V

    .line 3599
    invoke-virtual {p2, v5}, Lgx;->b(Landroid/graphics/Rect;)V

    .line 3601
    invoke-virtual {v4, v5}, Lgx;->c(Landroid/graphics/Rect;)V

    .line 3602
    invoke-virtual {p2, v5}, Lgx;->d(Landroid/graphics/Rect;)V

    .line 3604
    invoke-virtual {v4}, Lgx;->a()Z

    move-result v5

    invoke-virtual {p2, v5}, Lgx;->d(Z)V

    .line 3880
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3605
    invoke-virtual {p2, v5}, Lgx;->a(Ljava/lang/CharSequence;)V

    .line 3904
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3606
    invoke-virtual {p2, v5}, Lgx;->b(Ljava/lang/CharSequence;)V

    .line 3952
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3607
    invoke-virtual {p2, v5}, Lgx;->c(Ljava/lang/CharSequence;)V

    .line 4781
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    .line 3609
    invoke-virtual {p2, v5}, Lgx;->i(Z)V

    .line 5733
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    .line 3610
    invoke-virtual {p2, v5}, Lgx;->g(Z)V

    .line 6611
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    .line 3611
    invoke-virtual {p2, v5}, Lgx;->b(Z)V

    .line 6635
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    .line 3612
    invoke-virtual {p2, v5}, Lgx;->c(Z)V

    .line 3613
    invoke-virtual {v4}, Lgx;->b()Z

    move-result v5

    invoke-virtual {p2, v5}, Lgx;->e(Z)V

    .line 6709
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    .line 3614
    invoke-virtual {p2, v5}, Lgx;->f(Z)V

    .line 6757
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    .line 3615
    invoke-virtual {p2, v5}, Lgx;->h(Z)V

    .line 7323
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    .line 3617
    invoke-virtual {p2, v5}, Lgx;->a(I)V

    .line 7429
    sget-object v5, Lgx;->a:Lgx$j;

    iget-object v6, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v6}, Lgx$j;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v5

    .line 8420
    sget-object v6, Lgx;->a:Lgx$j;

    iget-object v7, p2, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v7, v5}, Lgx$j;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 8978
    iget-object v5, v4, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1547
    const-class v5, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lgx;->b(Ljava/lang/CharSequence;)V

    .line 1548
    invoke-virtual {p2, p1}, Lgx;->a(Landroid/view/View;)V

    .line 1550
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v3

    .line 1551
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1552
    check-cast v3, Landroid/view/View;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p2, v3}, Lgx;->c(Landroid/view/View;)V

    .line 1557
    :cond_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .line 1558
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1559
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1560
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout$a;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1562
    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 1564
    invoke-virtual {p2, v0}, Lgx;->b(Landroid/view/View;)V

    .line 1558
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1567
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1579
    invoke-direct {p0, p2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    invoke-super {p0, p1, p2, p3}, Lfz;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1582
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
