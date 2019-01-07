.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;
.super Ljava/lang/Object;
.source "CreateOrgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 362
    check-cast p1, Ljava/lang/Long;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->dismissLoadingDialog()V

    .line 1368
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->e()V

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1369
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;JLjava/lang/String;)V

    .line 1371
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "finish_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;Z)Z

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->finish()V

    .line 362
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->dismissLoadingDialog()V

    .line 386
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 380
    return-void
.end method
