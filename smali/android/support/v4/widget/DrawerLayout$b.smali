.class final Landroid/support/v4/widget/DrawerLayout$b;
.super Lfz;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2370
    invoke-direct {p0}, Lfz;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    .prologue
    .line 2374
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 2376
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2380
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgx;->c(Landroid/view/View;)V

    .line 2382
    :cond_0
    return-void
.end method
