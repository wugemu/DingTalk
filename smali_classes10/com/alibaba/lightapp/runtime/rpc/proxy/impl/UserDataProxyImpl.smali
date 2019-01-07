.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;
.super Ljava/lang/Object;
.source "UserDataProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeptsByCorpIdAndDeptIds(JLjava/util/List;Lhqu;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "callback":Lhqu;, "Lhqu<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$5;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$5;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/util/List;Lcma;)V

    .line 134
    return-void
.end method

.method public getOrgIdByCorpId(Ljava/lang/String;)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidByCorpIdAndStaffId(Ljava/lang/String;Ljava/lang/String;Lhqu;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lhqu",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p3, "callback":Lhqu;, "Lhqu<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 44
    return-void
.end method

.method public getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lhqu;, "Lhqu<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;Z)V

    .line 93
    return-void
.end method

.method public getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;Z)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p4, "expireLimitCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    .local p2, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lhqu;, "Lhqu<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$4;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$4;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/util/List;Lcma;Z)V

    .line 114
    return-void
.end method

.method public getUidListByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lhqu;, "Lhqu<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$2;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$2;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 66
    return-void
.end method

.method public getUidMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lhqu;, "Lhqu<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$3;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$3;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 88
    return-void
.end method
