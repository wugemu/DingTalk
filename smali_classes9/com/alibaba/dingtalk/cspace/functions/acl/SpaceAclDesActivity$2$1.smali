.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;
.super Ljava/lang/Object;
.source "SpaceAclDesActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 234
    check-cast p1, Ljava/lang/Long;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .line 2044
    invoke-static {p1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1241
    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;J)J

    .line 1242
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->dismissLoadingDialog()V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    sget v1, Lfzs$h;->and_concern_setting_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->a:Z

    invoke-virtual {v0, v1, v2}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 1247
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1247
    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 1252
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.alibaba.dingtalk.space.read.only.change"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1253
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1254
    const-string/jumbo v3, "doc_readonly"

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string/jumbo v0, "space_id"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    .line 3109
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1255
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1256
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 234
    :cond_0
    return-void

    .line 1254
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAclDesActivity"

    const-string/jumbo v2, "SpaceAclDesActivity makeFolderSafeModeEnable"

    const/4 v3, 0x0

    .line 268
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->dismissLoadingDialog()V

    .line 276
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->e(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 263
    return-void
.end method
