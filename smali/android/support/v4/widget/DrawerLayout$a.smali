.class final Landroid/support/v4/widget/DrawerLayout$a;
.super Lfz;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 2252
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Lfz;-><init>()V

    .line 2253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2302
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 2303
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 2304
    .local v1, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v3

    .line 2305
    .local v3, "visibleDrawer":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2306
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    .line 2307
    .local v0, "edgeGravity":I
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 8742
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v4

    .line 8741
    invoke-static {v0, v4}, Lgb;->a(II)I

    move-result v4

    .line 8743
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 8748
    :cond_0
    const/4 v2, 0x0

    .line 2308
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 2309
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    .end local v0    # "edgeGravity":I
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x1

    .line 2316
    .end local v1    # "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v3    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v4

    :cond_2
    invoke-super {p0, p1, p2}, Lfz;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2290
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2292
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2293
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    .prologue
    const/4 v3, 0x0

    .line 2257
    sget-boolean v2, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-eqz v2, :cond_1

    .line 2258
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 2277
    .end local p1    # "host":Landroid/view/View;
    :cond_0
    const-class v2, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lgx;->b(Ljava/lang/CharSequence;)V

    .line 2282
    invoke-virtual {p2, v3}, Lgx;->b(Z)V

    .line 2283
    invoke-virtual {p2, v3}, Lgx;->c(Z)V

    .line 2284
    sget-object v2, Lgx$a;->a:Lgx$a;

    invoke-virtual {p2, v2}, Lgx;->a(Lgx$a;)Z

    .line 2285
    sget-object v2, Lgx$a;->b:Lgx$a;

    invoke-virtual {p2, v2}, Lgx;->a(Lgx$a;)Z

    .line 2286
    return-void

    .line 2263
    .restart local p1    # "host":Landroid/view/View;
    :cond_1
    invoke-static {p2}, Lgx;->a(Lgx;)Lgx;

    move-result-object v1

    .line 2264
    .local v1, "superNode":Lgx;
    invoke-super {p0, p1, v1}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 2266
    invoke-virtual {p2, p1}, Lgx;->a(Landroid/view/View;)V

    .line 2267
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2268
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2269
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p2, v0}, Lgx;->c(Landroid/view/View;)V

    .line 3345
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->b:Landroid/graphics/Rect;

    .line 3347
    invoke-virtual {v1, v2}, Lgx;->a(Landroid/graphics/Rect;)V

    .line 3348
    invoke-virtual {p2, v2}, Lgx;->b(Landroid/graphics/Rect;)V

    .line 3350
    invoke-virtual {v1, v2}, Lgx;->c(Landroid/graphics/Rect;)V

    .line 3351
    invoke-virtual {p2, v2}, Lgx;->d(Landroid/graphics/Rect;)V

    .line 3353
    invoke-virtual {v1}, Lgx;->a()Z

    move-result v2

    invoke-virtual {p2, v2}, Lgx;->d(Z)V

    .line 3880
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3354
    invoke-virtual {p2, v2}, Lgx;->a(Ljava/lang/CharSequence;)V

    .line 3904
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3355
    invoke-virtual {p2, v2}, Lgx;->b(Ljava/lang/CharSequence;)V

    .line 3952
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3356
    invoke-virtual {p2, v2}, Lgx;->c(Ljava/lang/CharSequence;)V

    .line 4781
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    .line 3358
    invoke-virtual {p2, v2}, Lgx;->i(Z)V

    .line 5733
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    .line 3359
    invoke-virtual {p2, v2}, Lgx;->g(Z)V

    .line 6611
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    .line 3360
    invoke-virtual {p2, v2}, Lgx;->b(Z)V

    .line 6635
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    .line 3361
    invoke-virtual {p2, v2}, Lgx;->c(Z)V

    .line 3362
    invoke-virtual {v1}, Lgx;->b()Z

    move-result v2

    invoke-virtual {p2, v2}, Lgx;->e(Z)V

    .line 6709
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    .line 3363
    invoke-virtual {p2, v2}, Lgx;->f(Z)V

    .line 6757
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    .line 3364
    invoke-virtual {p2, v2}, Lgx;->h(Z)V

    .line 7323
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v2

    .line 3366
    invoke-virtual {p2, v2}, Lgx;->a(I)V

    .line 7978
    iget-object v2, v1, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2274
    check-cast p1, Landroid/view/ViewGroup;

    .line 8329
    .end local p1    # "host":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v2, v3

    .line 8330
    :goto_0
    if-ge v2, v4, :cond_0

    .line 8331
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8332
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8333
    invoke-virtual {p2, v5}, Lgx;->b(Landroid/view/View;)V

    .line 8330
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2322
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2323
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfz;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2325
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
