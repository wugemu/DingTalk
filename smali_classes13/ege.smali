.class public final Lege;
.super Ljava/lang/Object;
.source "OrgMicroAPPAPIImpl.java"

# interfaces
.implements Legc;


# static fields
.field private static a:Lege;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Legc;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lege;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lege;->a:Lege;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    sput-object v0, Lege;->a:Lege;

    .line 23
    :cond_0
    sget-object v0, Lege;->a:Lege;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JJLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 28
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lege$1;

    invoke-direct {v3, p0, p5}, Lege$1;-><init>(Lege;Lcma;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->queryUserAuthority(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 43
    return-void
.end method

.method public final a(JLjava/util/List;Ljava/util/List;ZLcma;)V
    .locals 7
    .param p1, "agentId"    # J
    .param p5, "isHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "deptVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "userVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 147
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lege$6;

    invoke-direct {v5, p0, p6}, Lege$6;-><init>(Lege;Lcma;)V

    move-object v2, p3

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->updateOrgMicroAppScopes(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Liyv;)V

    .line 162
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 2
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "curPage"    # Ljava/lang/Integer;
    .param p3, "pageSize"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 49
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    new-instance v1, Lege$2;

    invoke-direct {v1, p0, p4}, Lege$2;-><init>(Lege;Lcma;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->getSuiteList(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 2
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 69
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    new-instance v1, Lege$3;

    invoke-direct {v1, p0, p3}, Lege$3;-><init>(Lege;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->getSuiteInfo(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 2
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 108
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    new-instance v1, Lege$4;

    invoke-direct {v1, p0, p4}, Lege$4;-><init>(Lege;Lcma;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->tryOutSuiteForOrgV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 6
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 127
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    new-instance v5, Lege$5;

    invoke-direct {v5, p0, p5}, Lege$5;-><init>(Lege;Lcma;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->buySuiteForOrg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V

    .line 142
    return-void
.end method
