.class Landroid/support/design/widget/BottomSheetDialog$2;
.super Lfz;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetDialog;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Lfz;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 158
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 159
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Lgx;->a(I)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lgx;->k(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgx;->k(Z)V

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfz;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
