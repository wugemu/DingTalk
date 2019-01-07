.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;
.super Ljava/lang/Object;
.source "CreateOrgStep1Fragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 420
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;

    .line 1423
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1427
    const/4 v0, 0x0

    .line 1428
    if-eqz p1, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->iconMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)V

    .line 1430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1432
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v2, "getTemplateInfo %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .line 1434
    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->fromOrgDeptNodeObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    move-result-object v0

    .line 1435
    invoke-virtual {v0, v6}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setChecked(Z)V

    .line 1436
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1443
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/util/List;)V

    .line 420
    :cond_1
    return-void

    .line 1440
    :cond_2
    const-string/jumbo v1, "cre_org_v2"

    const-string/jumbo v2, "getTemplateInfo null %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 448
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "getTemplateInfo fail %d %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 458
    return-void
.end method
