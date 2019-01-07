.class final Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog$1;
.super Ljava/lang/Object;
.source "RationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->a(Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyx;

    .line 61
    .local v0, "request":Lbyx;
    invoke-interface {v0}, Lbyx;->b()V

    goto :goto_0

    .line 63
    .end local v0    # "request":Lbyx;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog$1;->a:Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->a(Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    return-void
.end method
