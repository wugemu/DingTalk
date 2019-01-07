.class final Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;
.super Ljava/lang/Object;
.source "NeverAskDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbyy;->a(Landroid/content/Context;)Z

    .line 44
    :cond_0
    return-void
.end method
