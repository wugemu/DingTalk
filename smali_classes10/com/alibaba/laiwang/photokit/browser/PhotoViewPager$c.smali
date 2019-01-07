.class final Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;
.super Lfz;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .prologue
    .line 2814
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-direct {p0}, Lfz;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2866
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)Lgl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)Lgl;

    move-result-object v1

    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2818
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2819
    const-class v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2820
    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v0

    .line 2821
    .local v0, "recordCompat":Lhb;
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a()Z

    move-result v1

    .line 3361
    iget-object v2, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2822
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .line 2823
    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)Lgl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2824
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)Lgl;

    move-result-object v1

    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v1

    .line 3387
    iget-object v2, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2825
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)I

    move-result v1

    .line 3445
    iget-object v2, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2826
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)I

    move-result v1

    .line 3471
    iget-object v2, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2828
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2832
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 2833
    const-class v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgx;->b(Ljava/lang/CharSequence;)V

    .line 2834
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lgx;->j(Z)V

    .line 2835
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lgx;->a(I)V

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lgx;->a(I)V

    .line 2841
    :cond_1
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2845
    invoke-super {p0, p1, p2, p3}, Lfz;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2862
    :goto_0
    return v0

    .line 2848
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2862
    goto :goto_0

    .line 2850
    :sswitch_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v2, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2851
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2854
    goto :goto_0

    .line 2856
    :sswitch_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2857
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2860
    goto :goto_0

    .line 2848
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
