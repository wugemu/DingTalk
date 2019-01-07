.class public final Ljfn;
.super Landroid/view/View$AccessibilityDelegate;
.source "SecureAccessbilityDelegate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "arg2"    # Landroid/view/View;
    .param p2, "arg3"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .param p1, "arg2"    # Landroid/view/View;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "arg1"    # Landroid/view/View;
    .param p2, "arg2"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 27
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "arg1"    # Landroid/view/View;
    .param p2, "arg2"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 31
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "arg1"    # Landroid/view/View;
    .param p2, "arg2"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 34
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "arg2"    # Landroid/view/ViewGroup;
    .param p2, "arg3"    # Landroid/view/View;
    .param p3, "arg4"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "arg2"    # Landroid/view/View;
    .param p2, "arg3"    # I
    .param p3, "arg4"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0
    .param p1, "arg1"    # Landroid/view/View;
    .param p2, "arg2"    # I

    .prologue
    .line 46
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "arg1"    # Landroid/view/View;
    .param p2, "arg2"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 50
    return-void
.end method
