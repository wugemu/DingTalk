.class Lfz$b;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfz;)Landroid/view/View$AccessibilityDelegate;
    .locals 1
    .param p1, "compat"    # Lfz;

    .prologue
    .line 51
    new-instance v0, Lfz$b$1;

    invoke-direct {v0, p0, p1}, Lfz$b$1;-><init>(Lfz$b;Lfz;)V

    return-object v0
.end method

.method public a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lgy;
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
