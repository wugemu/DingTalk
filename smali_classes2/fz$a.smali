.class final Lfz$a;
.super Lfz$b;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lfz$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfz;)Landroid/view/View$AccessibilityDelegate;
    .locals 1
    .param p1, "compat"    # Lfz;

    .prologue
    .line 111
    new-instance v0, Lfz$a$1;

    invoke-direct {v0, p0, p1}, Lfz$a$1;-><init>(Lfz$a;Lfz;)V

    return-object v0
.end method

.method public final a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lgy;
    .locals 2
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;
    .param p2, "host"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 170
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lgy;

    invoke-direct {v1, v0}, Lgy;-><init>(Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
