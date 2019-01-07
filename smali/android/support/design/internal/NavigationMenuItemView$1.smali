.class Landroid/support/design/internal/NavigationMenuItemView$1;
.super Lfz;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuItemView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuItemView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/internal/NavigationMenuItemView;

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView$1;->this$0:Landroid/support/design/internal/NavigationMenuItemView;

    invoke-direct {p0}, Lfz;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 80
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView$1;->this$0:Landroid/support/design/internal/NavigationMenuItemView;

    iget-boolean v0, v0, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    invoke-virtual {p2, v0}, Lgx;->a(Z)V

    .line 81
    return-void
.end method
