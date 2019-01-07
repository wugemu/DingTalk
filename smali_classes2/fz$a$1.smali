.class final Lfz$a$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfz$a;->a(Lfz;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfz;

.field final synthetic b:Lfz$a;


# direct methods
.method constructor <init>(Lfz$a;Lfz;)V
    .locals 0
    .param p1, "this$0"    # Lfz$a;

    .prologue
    .line 111
    iput-object p1, p0, Lfz$a$1;->b:Lfz$a;

    iput-object p2, p0, Lfz$a$1;->a:Lfz;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 115
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 153
    iget-object v1, p0, Lfz$a$1;->a:Lfz;

    .line 154
    invoke-virtual {v1, p1}, Lfz;->getAccessibilityNodeProvider(Landroid/view/View;)Lgy;

    move-result-object v0

    .line 155
    .local v0, "provider":Lgy;
    if-eqz v0, :cond_0

    .line 1192
    iget-object v1, v0, Lgy;->a:Ljava/lang/Object;

    .line 156
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeProvider;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 121
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
    .line 126
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    .line 127
    invoke-static {p2}, Lgx;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgx;

    move-result-object v1

    .line 126
    invoke-virtual {v0, p1, v1}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 128
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 133
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2, p3}, Lfz;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 161
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2, p3}, Lfz;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 148
    iget-object v0, p0, Lfz$a$1;->a:Lfz;

    invoke-virtual {v0, p1, p2}, Lfz;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method
