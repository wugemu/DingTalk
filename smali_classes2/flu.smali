.class public final Lflu;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lflu;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 286
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->isLogin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 335
    .local v0, "lastOrgId":J
    .local v2, "lastTime":J
    .local v4, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    :goto_0
    return-void

    .line 289
    .end local v0    # "lastOrgId":J
    .end local v2    # "lastTime":J
    .end local v4    # "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    sget-boolean v5, Lflu;->a:Z

    if-nez v5, :cond_0

    .line 293
    const-string/jumbo v5, "local_employee_last_reg_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 294
    const-string/jumbo v5, "sync_local_employee_cache_last_time"

    invoke-static {v5}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 295
    .restart local v2    # "lastTime":J
    const-string/jumbo v5, "local_employee_cache_oid"

    invoke-static {v5}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 296
    .restart local v0    # "lastOrgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    .line 298
    .restart local v4    # "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "contact_cache_contact_android_enable"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 299
    cmp-long v5, v0, v8

    if-eqz v5, :cond_0

    .line 300
    const-string/jumbo v5, "dropLocalEmployeeCache cause config off"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Lflu;->d()V

    goto :goto_0

    .line 306
    :cond_2
    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    .line 307
    if-eqz v4, :cond_0

    .line 308
    const-string/jumbo v5, "updateLocalEmployeeCache cause first sync"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Lflu;->a(J)V

    goto :goto_0

    .line 315
    :cond_3
    if-eqz v4, :cond_5

    .line 316
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v0, v6

    if-nez v5, :cond_4

    .line 318
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x240c8400

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 319
    const-string/jumbo v5, "updateLocalEmployeeCache cause time out"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Lflu;->a(J)V

    goto :goto_0

    .line 325
    :cond_4
    const-string/jumbo v5, "updateLocalEmployeeCache cause org change"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Lflu;->a(J)V

    goto/16 :goto_0

    .line 330
    :cond_5
    const-string/jumbo v5, "dropLocalEmployeeCache cause org remove"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Lflu;->d()V

    goto/16 :goto_0
.end method

.method private static a(J)V
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 359
    const/4 v1, 0x1

    sput-boolean v1, Lflu;->a:Z

    .line 360
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 361
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_0

    .line 362
    const/4 v1, 0x0

    sput-boolean v1, Lflu;->a:Z

    .line 426
    :goto_0
    return-void

    .line 365
    :cond_0
    new-instance v1, Lflu$6;

    new-instance v2, Lflu$5;

    invoke-direct {v2, p0, p1}, Lflu$5;-><init>(J)V

    invoke-direct {v1, v2}, Lflu$6;-><init>(Lcma;)V

    invoke-interface {v0, p0, p1, v1}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmpInfoClosest(JLiyv;)V

    goto :goto_0
.end method

.method static synthetic a(JJ)V
    .locals 6
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 40
    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "commitOfflineAudit start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1430
    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1434
    if-eqz v0, :cond_0

    .line 1437
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v1, :cond_0

    .line 1443
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->desensitizeMobile:Z

    if-eqz v0, :cond_0

    .line 1446
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->j()Lfmx;

    move-result-object v0

    .line 1447
    if-eqz v0, :cond_0

    .line 1448
    new-instance v1, Lfqk;

    invoke-direct {v1}, Lfqk;-><init>()V

    .line 1449
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lfqk;->b:Ljava/lang/Long;

    .line 1450
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lfqk;->a:Ljava/lang/Long;

    .line 1451
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lfqk;->c:Ljava/lang/Integer;

    .line 1452
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lfqk;->d:Ljava/lang/Integer;

    .line 1453
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lfqk;->e:Ljava/lang/Long;

    .line 1454
    invoke-interface {v0, v1}, Lfmx;->a(Lfqk;)I

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "commitOfflineAudit success "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(JLcma;)V
    .locals 4
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 162
    :goto_0
    return-void

    .line 70
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_cache_contact_android_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lflu$1;

    invoke-direct {v1, p2}, Lflu$1;-><init>(Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v0, "LocalOrgEmployeeCacheManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflu$3;

    invoke-direct {v1, p0, p1, p2}, Lflu$3;-><init>(JLcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lflu;->a:Z

    return v0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 461
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    .local v0, "lastTime":J
    :cond_0
    :goto_0
    return-void

    .line 464
    .end local v0    # "lastTime":J
    :cond_1
    const-string/jumbo v2, "sync_offline_audit_last_time"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 465
    .restart local v0    # "lastTime":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 466
    const-string/jumbo v2, "LocalOrgEmployeeCacheManager"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lflu$2;

    invoke-direct {v3}, Lflu$2;-><init>()V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 8

    .prologue
    .line 510
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->isLogin()Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    .local v2, "lastRegTime":J
    :cond_0
    :goto_0
    return-void

    .line 514
    .end local v2    # "lastRegTime":J
    :cond_1
    sget-boolean v4, Lflu;->a:Z

    if-nez v4, :cond_0

    .line 517
    const-string/jumbo v4, "local_employee_last_reg_time"

    invoke-static {v4}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 519
    .restart local v2    # "lastRegTime":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x240c8400

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 520
    const-string/jumbo v4, "local_employee_cache_oid"

    invoke-static {v4}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 522
    .local v0, "lastOrgId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 523
    const-string/jumbo v4, "dropLocalEmployeeCache cause safeCheck"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {}, Lflu;->d()V

    goto :goto_0
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x1

    sput-boolean v0, Lflu;->a:Z

    .line 339
    const-string/jumbo v0, "LocalOrgEmployeeCacheManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflu$4;

    invoke-direct {v1}, Lflu$4;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method
