.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1156
    .line 2159
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->dismissLoadingDialog()V

    .line 2160
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.external.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2161
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    const-string/jumbo v1, "employee_info"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2163
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2164
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->setResult(ILandroid/content/Intent;)V

    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->finish()V

    .line 1156
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->dismissLoadingDialog()V

    .line 1175
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1170
    return-void
.end method
