.class final Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;
.super Ljava/lang/Object;
.source "OnlineEditReleaseLockDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->dismiss()V

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1069
    if-eqz v0, :cond_0

    .line 1070
    sget v0, Lfzs$h;->dt_cspace_lock_released:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V

    :goto_0
    return-void

    .line 1073
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->dismiss()V

    .line 84
    const-string/jumbo v0, "RESULT_NULL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SERVICE_NULL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 79
    return-void
.end method
