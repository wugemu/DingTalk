.class final Lfll$2;
.super Ljava/lang/Object;
.source "ManagerOrgPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfll;->c(J)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfll;


# direct methods
.method constructor <init>(Lfll;)V
    .locals 0
    .param p1, "this$0"    # Lfll;

    .prologue
    .line 260
    iput-object p1, p0, Lfll$2;->a:Lfll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 1264
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1265
    :cond_0
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Org info is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->shortNameAuthObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->shortNameAuthObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;->authStatus:I

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->shortNameAuthObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;->authUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lflk;->a(ILjava/lang/String;)V

    .line 1273
    :goto_1
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0, p1}, Lfll;->a(Lfll;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 1274
    iget-object v0, p0, Lfll$2;->a:Lfll;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    invoke-static {v0, v1}, Lfll;->a(Lfll;I)I

    .line 1275
    iget-object v0, p0, Lfll$2;->a:Lfll;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hideMobileSwitch:Z

    invoke-static {v0, v1}, Lfll;->a(Lfll;Z)Z

    .line 1276
    iget-object v0, p0, Lfll$2;->a:Lfll;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasCreateAllEmpGroup:Z

    invoke-static {v0, v1}, Lfll;->b(Lfll;Z)Z

    .line 1277
    iget-object v0, p0, Lfll$2;->a:Lfll;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authTitleText:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatusText:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lfll;->a(Lfll;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 1280
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1}, Lflk;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 1281
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1}, Lflk;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 1282
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1}, Lflk;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 1284
    const-string/jumbo v0, "ManagerOrgPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Org info:status:%d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfll$2;->a:Lfll;

    invoke-static {v2}, Lfll;->b(Lfll;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lfll$2;->a:Lfll;

    invoke-static {v3}, Lfll;->c(Lfll;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1271
    :cond_2
    const-string/jumbo v0, "ManagerOrgPresenter"

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "shortNameAuthModel null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 294
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lfll$2;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lflk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Org info err,code:%s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 290
    return-void
.end method
