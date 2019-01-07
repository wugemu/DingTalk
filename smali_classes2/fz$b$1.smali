.class final Lfz$b$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfz$b;->a(Lfz;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfz;

.field final synthetic b:Lfz$b;


# direct methods
.method constructor <init>(Lfz$b;Lfz;)V
    .locals 0
    .param p1, "this$0"    # Lfz$b;

    .prologue
    .line 51
    iput-object p1, p0, Lfz$b$1;->b:Lfz$b;

    iput-object p2, p0, Lfz$b$1;->a:Lfz;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 55
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 60
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    .line 67
    invoke-static {p2}, Lgx;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgx;

    move-result-object v1

    .line 66
    invoke-virtual {v0, p1, v1}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 68
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2, p3}, Lfz;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 84
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 88
    iget-object v0, p0, Lfz$b$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 89
    return-void
.end method
