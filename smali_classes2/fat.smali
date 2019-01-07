.class public final Lfat;
.super Ljava/lang/Object;
.source "OmpPolicyImpl.java"

# interfaces
.implements Lezw;


# static fields
.field private static a:Lfat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lezw;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lfat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfat;->a:Lfat;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lfat;

    invoke-direct {v0}, Lfat;-><init>()V

    sput-object v0, Lfat;->a:Lfat;

    .line 30
    :cond_0
    sget-object v0, Lfat;->a:Lfat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JJILcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "cursor"    # J
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;>;"
    const-wide/16 v4, 0x0

    .line 36
    if-nez p6, :cond_0

    .line 37
    const-string/jumbo v2, "OmpPolicyImpl"

    const-string/jumbo v3, "listOrgManagerRole() callback null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void

    .line 40
    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    cmp-long v2, p3, v4

    if-ltz v2, :cond_1

    if-gtz p5, :cond_2

    .line 41
    :cond_1
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lfat$1;

    invoke-direct {v0, p0, p6}, Lfat$1;-><init>(Lfat;Lcma;)V

    .line 53
    .local v0, "requsetHandlerExt":Lcmg;, "Lcmg<Lfpn;Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    .line 54
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
    if-nez v1, :cond_3

    .line 55
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;->listOrgManagerRole(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 147
    if-nez p5, :cond_0

    .line 148
    const-string/jumbo v2, "OmpPolicyImpl"

    const-string/jumbo v3, "removeOrgManagerRole() callback null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_0
    return-void

    .line 151
    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 152
    :cond_1
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Lfat$5;

    invoke-direct {v0, p0, p5}, Lfat$5;-><init>(Lfat;Lcma;)V

    .line 162
    .local v0, "rpcRequsetHandlerExt":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    .line 163
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
    if-nez v1, :cond_3

    .line 164
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;->removeOrgManagerRole(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;>;"
    if-nez p3, :cond_0

    .line 65
    const-string/jumbo v2, "OmpPolicyImpl"

    const-string/jumbo v3, "listAllOrgManagerResource() callback null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void

    .line 68
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 69
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lfat$2;

    invoke-direct {v0, p0, p3}, Lfat$2;-><init>(Lfat;Lcma;)V

    .line 81
    .local v0, "rpcRequsetHandlerExt":Lcmg;, "Lcmg<Lfpk;Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    .line 82
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
    if-nez v1, :cond_2

    .line 83
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;->listAllOrgManagerResource(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/user/model/OrgManagerRoleObject;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "role"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    if-nez p4, :cond_0

    .line 92
    const-string/jumbo v2, "OmpPolicyImpl"

    const-string/jumbo v3, "addOrgManagerRole() callback null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 95
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    if-nez p3, :cond_2

    .line 96
    :cond_1
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Lfat$3;

    invoke-direct {v0, p0, p4}, Lfat$3;-><init>(Lfat;Lcma;)V

    .line 109
    .local v0, "rpcRequsetHandlerExt":Lcmg;, "Lcmg<Lfpm;Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    .line 110
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
    if-nez v1, :cond_3

    .line 111
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->toIDLModel()Lfpm;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;->addOrgManagerRole(Ljava/lang/Long;Lfpm;Liyv;)V

    goto :goto_0
.end method

.method public final b(JLcom/alibaba/android/user/model/OrgManagerRoleObject;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "role"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    if-nez p4, :cond_0

    .line 121
    const-string/jumbo v2, "OmpPolicyImpl"

    const-string/jumbo v3, "updateOrgManagerRole() callback null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :goto_0
    return-void

    .line 124
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    if-nez p3, :cond_2

    .line 125
    :cond_1
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lfat$4;

    invoke-direct {v0, p0, p4}, Lfat$4;-><init>(Lfat;Lcma;)V

    .line 137
    .local v0, "rpcRequsetHandlerExt":Lcmg;, "Lcmg<Lfpm;Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;

    .line 138
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OmpPolicyIService;
    if-nez v1, :cond_3

    .line 139
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->toIDLModel()Lfpm;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/OmpPolicyIService;->updateOrgManagerRole(Ljava/lang/Long;Lfpm;Liyv;)V

    goto :goto_0
.end method
