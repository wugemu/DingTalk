.class public Lfak;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Lezt;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lfak;


# instance fields
.field private b:Lop;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lfak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfak;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfak;->d:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lezt;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lfak;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfak;->c:Lfak;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lfak;

    invoke-direct {v0}, Lfak;-><init>()V

    sput-object v0, Lfak;->c:Lfak;

    .line 93
    :cond_0
    sget-object v0, Lfak;->c:Lfak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lfak;Ljava/util/List;JLjava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "x0"    # Lfak;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/List;

    .prologue
    .line 80
    .line 11864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11865
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 11866
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Lfbm;->b(JJ)Lfrw;

    move-result-object v3

    .line 11867
    if-nez v3, :cond_0

    .line 11868
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11870
    :cond_0
    new-instance v0, Lcgc;

    invoke-direct {v0}, Lcgc;-><init>()V

    .line 11871
    new-instance v4, Lcet;

    invoke-direct {v4}, Lcet;-><init>()V

    iput-object v4, v0, Lcgc;->b:Lcet;

    .line 11872
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-wide v6, v3, Lfrw;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcet;->a:Ljava/lang/Long;

    .line 11873
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-wide v6, v3, Lfrw;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcet;->b:Ljava/lang/Long;

    .line 11874
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v5, v3, Lfrw;->e:Ljava/lang/String;

    iput-object v5, v4, Lcet;->d:Ljava/lang/String;

    .line 11875
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v5, v3, Lfrw;->c:Ljava/lang/String;

    iput-object v5, v4, Lcet;->c:Ljava/lang/String;

    .line 11876
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v5, v3, Lfrw;->f:Ljava/lang/String;

    iput-object v5, v4, Lcet;->j:Ljava/lang/String;

    .line 11877
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v3, v3, Lfrw;->g:Ljava/lang/String;

    iput-object v3, v4, Lcet;->k:Ljava/lang/String;

    .line 11878
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lfak;)Lop;
    .locals 1
    .param p0, "x0"    # Lfak;

    .prologue
    .line 80
    iget-object v0, p0, Lfak;->b:Lop;

    return-object v0
.end method

.method static synthetic a(Lfak;Lop;)Lop;
    .locals 0
    .param p0, "x0"    # Lfak;
    .param p1, "x1"    # Lop;

    .prologue
    .line 80
    iput-object p1, p0, Lfak;->b:Lop;

    return-object p1
.end method

.method private a(Lcmg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handlerExt"    # Lcmg;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 855
    iget-object v0, p0, Lfak;->d:Landroid/os/Handler;

    new-instance v1, Lfak$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lfak$12;-><init>(Lfak;Lcmg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method static synthetic a(Lfak;Ljava/lang/Object;Lcma;)V
    .locals 2
    .param p0, "x0"    # Lfak;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 80
    .line 12846
    iget-object v0, p0, Lfak;->d:Landroid/os/Handler;

    new-instance v1, Lfak$11;

    invoke-direct {v1, p0, p2, p1}, Lfak$11;-><init>(Lfak;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method static synthetic a(Lfak;Ljava/util/List;JLjava/util/List;Lcma;)V
    .locals 6
    .param p0, "x0"    # Lfak;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Lcma;

    .prologue
    .line 80
    .line 13792
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 13793
    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13795
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lfak;->b(Ljava/util/List;JZLcma;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(JIILcma;)V
    .locals 5
    .param p1, "oid"    # J
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;>;"
    new-instance v0, Lfak$25;

    invoke-direct {v0, p0, p5}, Lfak$25;-><init>(Lfak;Lcma;)V

    .line 1128
    .local v0, "handler":Lcmg;, "Lcmg<Lcex;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1129
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1130
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getBossEmployees(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JILcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    new-instance v0, Lfak$8;

    invoke-direct {v0, p0, p4}, Lfak$8;-><init>(Lfak;Lcma;)V

    .line 600
    .local v0, "handler":Lcmg;, "Lcmg<Lcfa;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 601
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgManageInfoV2(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JILjava/lang/String;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    new-instance v0, Lfak$5;

    invoke-direct {v0, p0, p5}, Lfak$5;-><init>(Lfak;Lcma;)V

    .line 496
    .local v0, "handler":Lcmg;, "Lcmg<Lcgj;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 497
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    new-instance v1, Lfpj;

    invoke-direct {v1}, Lfpj;-><init>()V

    .line 498
    .local v1, "model":Lfpj;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lfpj;->a:Ljava/lang/Long;

    .line 499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lfpj;->c:Ljava/lang/Integer;

    .line 500
    iput-object p4, v1, Lfpj;->b:Ljava/lang/String;

    .line 501
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->leaveOrganizationV2(Lfpj;Liyv;)V

    .line 502
    return-void
.end method

.method public final a(JJIILcma;)V
    .locals 7
    .param p1, "deptId"    # J
    .param p3, "oid"    # J
    .param p5, "offset"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v5, Lfak$13;

    invoke-direct {v5, p0, p7}, Lfak$13;-><init>(Lfak;Lcma;)V

    .line 895
    .local v5, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 896
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgDeptRelations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJILcma;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "oid"    # J
    .param p5, "orgLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 957
    new-instance v0, Lfak$18;

    invoke-direct {v0, p0, p6}, Lfak$18;-><init>(Lfak;Lcma;)V

    .line 964
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 965
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq p5, v2, :cond_0

    if-nez v1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->setEmpOrgLevel(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJLcma;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "oid"    # J
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
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 974
    new-instance v0, Lfak$19;

    invoke-direct {v0, p0, p5}, Lfak$19;-><init>(Lfak;Lcma;)V

    .line 981
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 982
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeEmployee(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJLjava/util/List;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1573
    .local p5, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1574
    :cond_0
    if-eqz p6, :cond_1

    .line 1575
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    :cond_1
    :goto_0
    return-void

    .line 1579
    :cond_2
    new-instance v0, Lfak$48;

    invoke-direct {v0, p0, p6}, Lfak$48;-><init>(Lfak;Lcma;)V

    .line 1585
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1586
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1587
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1590
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, p5, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeEmpDeptMap(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final a(JJZLcma;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "oid"    # J
    .param p5, "attachProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Lcgc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "listener":Lcma;, "Lcma<Lcgc;>;"
    const-wide/16 v2, 0x0

    .line 625
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const-class v0, Lfak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lfak$9;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lfak$9;-><init>(Lfak;JJLcma;Z)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(JLcfi;Ljava/util/List;Lcma;)V
    .locals 5
    .param p1, "templateId"    # J
    .param p3, "org"    # Lcfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcfi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p4, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    new-instance v0, Lfak$29;

    invoke-direct {v0, p0, p5}, Lfak$29;-><init>(Lfak;Lcma;)V

    .line 1204
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1205
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1206
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :goto_0
    return-void

    .line 1210
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, p3, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->createOrgV3(Ljava/lang/Long;Lcfi;Ljava/util/List;Liyv;)V

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
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    const/4 v4, 0x0

    .line 1006
    new-instance v0, Lfak$21;

    invoke-direct {v0, p0, p3}, Lfak$21;-><init>(Lfak;Lcma;)V

    .line 1019
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcen;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1020
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 1021
    :cond_0
    invoke-interface {p3, v4, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    return-void

    .line 1024
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getSelfDepts(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLfoz;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "model"    # Lfoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lfoz;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1308
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v0, Lfak$35;

    invoke-direct {v0, p0, p4}, Lfak$35;-><init>(Lfak;Lcma;)V

    .line 1315
    .local v0, "handler":Lcmg;, "Lcmg<Lcen;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1316
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 1317
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :goto_0
    return-void

    .line 1320
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->addDept(Ljava/lang/Long;Lfoz;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLfrt;Lcma;)V
    .locals 9
    .param p1, "oid"    # J
    .param p3, "model"    # Lfrt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lfrt;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v3, 0x0

    .line 1669
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    if-nez p3, :cond_2

    .line 1670
    :cond_0
    if-eqz p4, :cond_1

    .line 1671
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_1
    :goto_0
    return-void

    .line 1675
    :cond_2
    new-instance v0, Lfak$51;

    invoke-direct {v0, p0, p4}, Lfak$51;-><init>(Lfak;Lcma;)V

    .line 1681
    .local v0, "handler":Lcmg;, "Lcmg<Lcen;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1682
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1683
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 11078
    if-nez p3, :cond_4

    .line 1686
    :goto_1
    invoke-interface {v1, v5, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->updateDept(Ljava/lang/Long;Lfoz;Liyv;)V

    goto :goto_0

    .line 11082
    :cond_4
    new-instance v4, Lfoz;

    invoke-direct {v4}, Lfoz;-><init>()V

    .line 11083
    iget-object v2, p3, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_6

    iget-object v2, p3, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v2

    :goto_2
    iput-object v2, v4, Lfoz;->a:Lcen;

    .line 11084
    iget-object v2, p3, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_7

    iget-object v2, p3, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v2

    :goto_3
    iput-object v2, v4, Lfoz;->b:Lcen;

    .line 11085
    iget-boolean v2, p3, Lfrt;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v4, Lfoz;->c:Ljava/lang/Boolean;

    .line 11086
    iget-object v2, p3, Lfrt;->d:Lfpb;

    iput-object v2, v4, Lfoz;->d:Lfpb;

    .line 11088
    iget-object v2, p3, Lfrt;->e:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p3, Lfrt;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 11089
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lfoz;->e:Ljava/util/List;

    .line 11090
    iget-object v2, p3, Lfrt;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 11091
    if-eqz v2, :cond_5

    .line 11094
    iget-object v7, v4, Lfoz;->e:Ljava/util/List;

    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    invoke-virtual {v8, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v2, v3

    .line 11083
    goto :goto_2

    :cond_7
    move-object v2, v3

    .line 11084
    goto :goto_3

    .line 11098
    :cond_8
    iget-object v2, p3, Lfrt;->f:Lfru;

    if-eqz v2, :cond_a

    iget-object v2, p3, Lfrt;->f:Lfru;

    invoke-virtual {v2}, Lfru;->a()Lfpa;

    move-result-object v2

    :goto_5
    iput-object v2, v4, Lfoz;->f:Lfpa;

    .line 11099
    iget-object v2, p3, Lfrt;->g:Lfru;

    if-eqz v2, :cond_9

    iget-object v2, p3, Lfrt;->g:Lfru;

    invoke-virtual {v2}, Lfru;->a()Lfpa;

    move-result-object v3

    :cond_9
    iput-object v3, v4, Lfoz;->g:Lfpa;

    move-object v3, v4

    .line 11101
    goto/16 :goto_1

    :cond_a
    move-object v2, v3

    .line 11098
    goto :goto_5
.end method

.method public final a(JLjava/lang/String;ILcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lfrv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1873
    .local p5, "listener":Lcma;, "Lcma<Lfrv;>;"
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    .line 1874
    if-eqz p5, :cond_0

    .line 1875
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "Invalid params"

    invoke-interface {p5, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1880
    :cond_1
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1881
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v2, :cond_2

    .line 1882
    if-eqz p5, :cond_0

    .line 1883
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "service is null"

    invoke-interface {p5, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1888
    :cond_2
    new-instance v0, Lfak$60;

    invoke-direct {v0, p0, p5}, Lfak$60;-><init>(Lfak;Lcma;)V

    .line 1896
    .local v0, "handler":Lcmg;, "Lcmg<Lfpp;Lfrv;>;"
    new-instance v1, Lfpj;

    invoke-direct {v1}, Lfpj;-><init>()V

    .line 1897
    .local v1, "orgLeaveModel":Lfpj;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lfpj;->a:Ljava/lang/Long;

    .line 1898
    iput-object p3, v1, Lfpj;->b:Ljava/lang/String;

    .line 1899
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lfpj;->c:Ljava/lang/Integer;

    .line 1901
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->prepareRemoveOrg(Lfpj;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1545
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1546
    :cond_0
    if-eqz p4, :cond_1

    .line 1547
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "orgId is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :cond_1
    :goto_0
    return-void

    .line 1551
    :cond_2
    new-instance v0, Lfak$47;

    invoke-direct {v0, p0, p4}, Lfak$47;-><init>(Lfak;Lcma;)V

    .line 1558
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1559
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1560
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1563
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeOrgEmail(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "iconMediaId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1736
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    .line 1737
    if-eqz p6, :cond_0

    .line 1738
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "Invalid params"

    invoke-interface {p6, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1744
    if-eqz p6, :cond_0

    .line 1745
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "url can not null"

    invoke-interface {p6, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    :cond_2
    new-instance v0, Lfak$54;

    invoke-direct {v0, p0, p6}, Lfak$54;-><init>(Lfak;Lcma;)V

    .line 1756
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1757
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v2, :cond_3

    .line 1758
    if-eqz p6, :cond_0

    .line 1759
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "service is null"

    invoke-interface {p6, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1764
    :cond_3
    new-instance v1, Lfpv;

    invoke-direct {v1}, Lfpv;-><init>()V

    .line 1765
    .local v1, "organiztionOAModel":Lfpv;
    iput-object p3, v1, Lfpv;->a:Ljava/lang/String;

    .line 1766
    iput-object p4, v1, Lfpv;->b:Ljava/lang/String;

    .line 1767
    iput-object p5, v1, Lfpv;->c:Ljava/lang/String;

    .line 1768
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->setOAModel(Ljava/lang/Long;Lfpv;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/util/List;JLjava/util/List;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p4, "preDeptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1599
    .local p3, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "postDeptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1600
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1601
    :cond_0
    if-eqz p7, :cond_1

    .line 1602
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_1
    :goto_0
    return-void

    .line 1606
    :cond_2
    new-instance v5, Lfak$49;

    invoke-direct {v5, p0, p7}, Lfak$49;-><init>(Lfak;Lcma;)V

    .line 1612
    .local v5, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1613
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_3

    .line 1614
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "service is null"

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1617
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, p3

    move-object v4, p6

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->updateEmpDeptMap(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/util/List;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p3, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lfak;->a(JLjava/util/List;Lcma;Z)V

    .line 1031
    return-void
.end method

.method public final a(JLjava/util/List;Lcma;Z)V
    .locals 7
    .param p1, "orgId"    # J
    .param p5, "expireLimitCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1035
    new-instance v0, Lfak$22;

    invoke-direct {v0, p0, p4}, Lfak$22;-><init>(Lfak;Lcma;)V

    .line 1049
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcew;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1050
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    if-nez v1, :cond_1

    .line 1051
    :cond_0
    invoke-interface {p4, v4, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-le v2, v3, :cond_3

    .line 1056
    if-eqz p5, :cond_2

    .line 1057
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_2

    .line 1058
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "too many staffIds"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1061
    :cond_2
    sget-object v2, Lfak;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "getOrgEmpInfoByStaffIds too many staffIds "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmpInfoByStaffIds(Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final a(JZILcma;)V
    .locals 5
    .param p1, "oid"    # J
    .param p3, "isShutDown"    # Z
    .param p4, "markBit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZI",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1275
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfak$33;

    invoke-direct {v0, p0, p5}, Lfak$33;-><init>(Lfak;Lcma;)V

    .line 1282
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1283
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->setOrgSettingSwitch(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcfi;Lcma;)V
    .locals 6
    .param p1, "model"    # Lcfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfi;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 990
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfak$20;

    invoke-direct {v0, p0, p2}, Lfak$20;-><init>(Lfak;Lcma;)V

    .line 997
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 998
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    iget-object v2, p1, Lcfi;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcfi;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->updateOrg(Lcfi;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V
    .locals 4
    .param p1, "org"    # Lcfi;
    .param p3, "attach"    # Lcom/alibaba/android/user/model/OrgAttachObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;",
            "Lcom/alibaba/android/user/model/OrgAttachObject;",
            "Lcma",
            "<",
            "Lcfi;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1216
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    .local p4, "listener":Lcma;, "Lcma<Lcfi;>;"
    new-instance v0, Lfak$30;

    invoke-direct {v0, p0, p4}, Lfak$30;-><init>(Lfak;Lcma;)V

    .line 1224
    .local v0, "handler":Lcmg;, "Lcmg<Lcfi;Lcfi;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1225
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1226
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-static {p2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/android/user/model/OrgAttachObject;->toIDLModel(Lcom/alibaba/android/user/model/OrgAttachObject;)Lfoy;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->manageOrg(Lcfi;Ljava/util/List;Lfoy;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1097
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;>;"
    new-instance v0, Lfak$24;

    invoke-direct {v0, p0, p1}, Lfak$24;-><init>(Lfak;Lcma;)V

    .line 1113
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcdy;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1114
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getIndustry(Liyv;)V

    .line 1115
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 905
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    new-instance v0, Lfak$14;

    invoke-direct {v0, p0, p2}, Lfak$14;-><init>(Lfak;Lcma;)V

    .line 914
    .local v0, "handler":Lcmg;, "Lcmg<Lcev;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 915
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v1

    .line 916
    .local v1, "model":Lcev;
    invoke-virtual {p1, p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v3

    iput-object v3, v1, Lcev;->a:Lcew;

    .line 917
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->addEmployee(Lcev;Liyv;)V

    .line 918
    return-void
.end method

.method public final a(Lfpj;Lcma;)V
    .locals 3
    .param p1, "orgLeaveModel"    # Lfpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfpj;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 538
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfak$6;

    invoke-direct {v0, p0, p2}, Lfak$6;-><init>(Lfak;Lcma;)V

    .line 546
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 547
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeOrgV2(Lfpj;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p1, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    new-instance v0, Lfak$1;

    invoke-direct {v0, p0, p2}, Lfak$1;-><init>(Lfak;Lcma;)V

    .line 104
    .local v0, "handler":Lcmg;, "Lcmg<Lcfi;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 105
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 106
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "oid is null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 115
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    new-instance v0, Lfak$7;

    invoke-direct {v0, p0, p3}, Lfak$7;-><init>(Lfak;Lcma;)V

    .line 123
    .local v0, "handler":Lcmg;, "Lcmg<Lcew;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 124
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 125
    :cond_0
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "oid is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "uid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmployeeProfile(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 417
    .local p4, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;>;"
    new-instance v0, Lfak$4;

    invoke-direct {v0, p0, p4}, Lfak$4;-><init>(Lfak;Lcma;)V

    .line 436
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcfd;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 437
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->multiSearch(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILjava/lang/Long;IILcma;)V
    .locals 8
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "deptType"    # I
    .param p4, "oid"    # Ljava/lang/Long;
    .param p5, "start"    # I
    .param p6, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Long;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 217
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v7, Lfak$46;

    invoke-direct {v7, p0, p7, p7}, Lfak$46;-><init>(Lfak;Lcma;Lcma;)V

    .line 273
    .local v7, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 274
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p4, :cond_0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7033
    const/4 v3, 0x0

    invoke-virtual {v7, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgRelations(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IJLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 7
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "oid"    # J
    .param p5, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    new-instance v5, Lfak$63;

    invoke-direct {v5, p0, p6}, Lfak$63;-><init>(Lfak;Lcma;)V

    .line 355
    .local v5, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcfc;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 356
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "keyWord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9033
    const/4 v3, 0x0

    invoke-virtual {v5, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getParentNodeList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 8
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "keyType"    # Ljava/lang/Integer;
    .param p3, "oid"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "size"    # Ljava/lang/Integer;
    .param p6, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 283
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v7, Lfak$56;

    invoke-direct {v7, p0, p7, p7}, Lfak$56;-><init>(Lfak;Lcma;Lcma;)V

    .line 326
    .local v7, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 327
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p3, :cond_0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8033
    const/4 v3, 0x0

    invoke-virtual {v7, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-static {p6}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgNodeList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;IILcma;)V
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 365
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v5, Lfak$64;

    invoke-direct {v5, p0, p5}, Lfak$64;-><init>(Lfak;Lcma;)V

    .line 376
    .local v5, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 377
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "keyWord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10033
    const/4 v3, 0x0

    invoke-virtual {v5, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->search(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 133
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    new-instance v0, Lfak$15;

    invoke-direct {v0, p0, p3}, Lfak$15;-><init>(Lfak;Lcma;)V

    .line 141
    .local v0, "handler":Lcmg;, "Lcmg<Lcew;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 142
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 143
    :cond_0
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "oid is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mobile :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmployeeProfileByMobile(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 7
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "size"    # Ljava/lang/Integer;
    .param p5, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 386
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v6, Lfak$2;

    invoke-direct {v6, p0, p6}, Lfak$2;-><init>(Lfak;Lcma;)V

    .line 396
    .local v6, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 397
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "keyWord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11033
    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {p5}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/user/idl/services/ContactIService;->searchList(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;JZLcma;)V
    .locals 8
    .param p2, "oid"    # J
    .param p4, "useLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_2

    .line 721
    :cond_0
    if-eqz p5, :cond_1

    .line 722
    const-string/jumbo v0, "CODE001"

    const-string/jumbo v1, "INVALID ARGUMENTS"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v3, "currentUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lfak$10;

    move-object v1, p0

    move v2, p4

    move-wide v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfak$10;-><init>(Lfak;ZLjava/util/List;JLcma;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcen;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1420
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    new-instance v0, Lfak$41;

    invoke-direct {v0, p0, p2}, Lfak$41;-><init>(Lfak;Lcma;)V

    .line 1434
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcen;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1435
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 1436
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :goto_0
    return-void

    .line 1439
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getDeptInfoList(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 10
    .param p5, "limit"    # I
    .param p6, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1387
    .local p1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "excludeDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p4, "excludeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    new-instance v8, Lfak$40;

    move-object/from16 v0, p7

    invoke-direct {v8, p0, v0}, Lfak$40;-><init>(Lfak;Lcma;)V

    .line 1396
    .local v8, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcgc;>;Ljava/util/List<Lcgc;>;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1397
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 1398
    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :goto_0
    return-void

    .line 1402
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    .local v2, "selectList":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1405
    .local v9, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toSimpleIDLModel()Lcen;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1408
    .end local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v4, "disList":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1410
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1411
    .restart local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toSimpleIDLModel()Lcen;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1415
    .end local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v7

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/android/user/idl/services/ContactIService;->getUsersByDeptIds(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final b(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;>;"
    new-instance v0, Lfak$38;

    invoke-direct {v0, p0, p4}, Lfak$38;-><init>(Lfak;Lcma;)V

    .line 1351
    .local v0, "handler":Lcmg;, "Lcmg<Lcek;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1352
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 1353
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :goto_0
    return-void

    .line 1356
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgApplyList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(JJIILcma;)V
    .locals 7
    .param p1, "deptId"    # J
    .param p3, "oid"    # J
    .param p5, "offset"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1325
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v5, Lfak$37;

    invoke-direct {v5, p0, p7}, Lfak$37;-><init>(Lfak;Lcma;)V

    .line 1333
    .local v5, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1334
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    if-nez v0, :cond_1

    .line 1335
    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :goto_0
    return-void

    .line 1338
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmpRelations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(JJILcma;)V
    .locals 7
    .param p1, "oid"    # J
    .param p3, "uid"    # J
    .param p5, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgEmpMobileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    const-wide/16 v4, 0x0

    .line 1501
    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_2

    .line 1502
    :cond_0
    if-eqz p6, :cond_1

    .line 1503
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "oid is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_1
    :goto_0
    return-void

    .line 1506
    :cond_2
    new-instance v0, Lfak$44;

    invoke-direct {v0, p0, p6}, Lfak$44;-><init>(Lfak;Lcma;)V

    .line 1513
    .local v0, "handler":Lcmg;, "Lcmg<Lfpe;Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1514
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmpMobileV2(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(JJLcma;)V
    .locals 5
    .param p1, "oid"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1138
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    new-instance v0, Lfak$27;

    invoke-direct {v0, p0, p5}, Lfak$27;-><init>(Lfak;Lcma;)V

    .line 1146
    .local v0, "handler":Lcmg;, "Lcmg<Lcew;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1147
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1148
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :goto_0
    return-void

    .line 1151
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->addBossEmployee(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final b(JJZLcma;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "oid"    # J
    .param p5, "open"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 940
    new-instance v0, Lfak$17;

    invoke-direct {v0, p0, p6}, Lfak$17;-><init>(Lfak;Lcma;)V

    .line 947
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 948
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->setEmpHideMobileSwitch(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final b(JLcma;)V
    .locals 5
    .param p1, "templateId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;>;"
    new-instance v0, Lfak$32;

    invoke-direct {v0, p0, p3}, Lfak$32;-><init>(Lfak;Lcma;)V

    .line 1264
    .local v0, "handler":Lcmg;, "Lcmg<Lcfz;Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1265
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 1266
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getTemplateInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final b(JLjava/util/List;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const/4 v4, 0x0

    .line 1069
    if-nez p4, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1073
    :cond_0
    new-instance v0, Lfak$23;

    invoke-direct {v0, p0, p4}, Lfak$23;-><init>(Lfak;Lcma;)V

    .line 1087
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcew;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1088
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    if-eqz p3, :cond_1

    if-nez v1, :cond_2

    .line 1089
    :cond_1
    invoke-interface {p4, v4, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmpInfoByUids(Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V
    .locals 4
    .param p1, "org"    # Lcfi;
    .param p3, "attach"    # Lcom/alibaba/android/user/model/OrgAttachObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;",
            "Lcom/alibaba/android/user/model/OrgAttachObject;",
            "Lcma",
            "<",
            "Lfon;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1235
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    .local p4, "listener":Lcma;, "Lcma<Lfon;>;"
    new-instance v0, Lfak$31;

    invoke-direct {v0, p0, p4}, Lfak$31;-><init>(Lfak;Lcma;)V

    .line 1242
    .local v0, "handler":Lcmg;, "Lcmg<Lfon;Lfon;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1243
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "parm error"

    invoke-direct {p0, v0, v2, v3}, Lfak;->a(Lcmg;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_1
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1246
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_2

    .line 1247
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-direct {p0, v0, v2, v3}, Lfak;->a(Lcmg;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :goto_0
    return-void

    .line 1250
    :cond_2
    invoke-static {p2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alibaba/android/user/model/OrgAttachObject;->toIDLModel(Lcom/alibaba/android/user/model/OrgAttachObject;)Lfoy;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->manageOrgV2(Lcfi;Ljava/util/List;Lfoy;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 923
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    new-instance v0, Lfak$16;

    invoke-direct {v0, p0, p2}, Lfak$16;-><init>(Lfak;Lcma;)V

    .line 932
    .local v0, "handler":Lcmg;, "Lcmg<Lcev;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 933
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v1

    .line 934
    .local v1, "model":Lcev;
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->updateEmployee(Lcev;Liyv;)V

    .line 935
    return-void
.end method

.method public final b(Ljava/lang/Long;Lcma;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 408
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfak$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfak$3;-><init>(Lfak;Lcma;)V

    .line 410
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 411
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->activeOrgCertification(Ljava/lang/Long;Liyv;)V

    .line 412
    return-void
.end method

.method public final b(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 152
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    new-instance v0, Lfak$26;

    invoke-direct {v0, p0, p3}, Lfak$26;-><init>(Lfak;Lcma;)V

    .line 161
    .local v0, "handler":Lcmg;, "Lcmg<Lcev;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 162
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "oid is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "uid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmployeeExtensionProfile(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;JZLcma;)V
    .locals 4
    .param p2, "orgId"    # J
    .param p4, "attachProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1845
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1846
    :cond_0
    if-eqz p5, :cond_1

    .line 1847
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_1
    :goto_0
    return-void

    .line 1851
    :cond_2
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1852
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1853
    if-eqz p5, :cond_1

    .line 1854
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1859
    :cond_3
    new-instance v0, Lfak$59;

    invoke-direct {v0, p0, p5}, Lfak$59;-><init>(Lfak;Lcma;)V

    .line 1868
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcgc;>;Ljava/util/List<Lcgc;>;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getUserEmployeeInfos(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final c(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1773
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1775
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {p4, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :goto_0
    return-void

    .line 1779
    :cond_0
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1780
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_1

    .line 1782
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "service is null"

    invoke-interface {p4, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lfak$55;

    invoke-direct {v3, p0, p4}, Lfak$55;-><init>(Lfak;Lcma;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/user/idl/services/ContactIService;->listJoinTeamInvite(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c(JJIILcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "offset"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;>;"
    new-instance v5, Lfak$42;

    invoke-direct {v5, p0, p7}, Lfak$42;-><init>(Lfak;Lcma;)V

    .line 1453
    .local v5, "handler":Lcmg;, "Lcmg<Lcex;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1454
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 1455
    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/user/idl/services/ContactIService;->getInactiveEmpsInDept(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c(JJLcma;)V
    .locals 5
    .param p1, "oid"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    new-instance v0, Lfak$28;

    invoke-direct {v0, p0, p5}, Lfak$28;-><init>(Lfak;Lcma;)V

    .line 1165
    .local v0, "handler":Lcmg;, "Lcmg<Lcew;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1166
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1167
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    .line 1170
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeBossEmployee(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final c(JLcma;)V
    .locals 5
    .param p1, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgDetailObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1291
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgDetailObject;>;"
    new-instance v0, Lfak$34;

    invoke-direct {v0, p0, p3}, Lfak$34;-><init>(Lfak;Lcma;)V

    .line 1298
    .local v0, "handler":Lcmg;, "Lcmg<Lfpd;Lcom/alibaba/android/user/model/OrgDetailObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1299
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 1300
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_0
    return-void

    .line 1303
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgDetail(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final c(JLjava/util/List;Lcma;)V
    .locals 5
    .param p1, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1361
    .local p3, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    new-instance v0, Lfak$39;

    invoke-direct {v0, p0, p4}, Lfak$39;-><init>(Lfak;Lcma;)V

    .line 1377
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcen;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1378
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_0

    .line 1379
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getDeptInfos(Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 171
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    new-instance v0, Lfak$36;

    invoke-direct {v0, p0, p3}, Lfak$36;-><init>(Lfak;Lcma;)V

    .line 180
    .local v0, "handler":Lcmg;, "Lcmg<Lcev;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 181
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "oid is: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "uid :"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgEmployeeExtensionProfileV2(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final d(JJLcma;)V
    .locals 7
    .param p1, "oid"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lfrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Lfrt;>;"
    const-wide/16 v4, 0x0

    .line 1623
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 1624
    :cond_0
    if-eqz p5, :cond_1

    .line 1625
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_1
    :goto_0
    return-void

    .line 1629
    :cond_2
    new-instance v0, Lfak$50;

    invoke-direct {v0, p0, p5}, Lfak$50;-><init>(Lfak;Lcma;)V

    .line 1635
    .local v0, "handler":Lcmg;, "Lcmg<Lfoz;Lfrt;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1636
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1637
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getDeptExtensionInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final d(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgInviteObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1463
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgInviteObject;>;"
    new-instance v0, Lfak$43;

    invoke-direct {v0, p0, p3, p1, p2}, Lfak$43;-><init>(Lfak;Lcma;J)V

    .line 1472
    .local v0, "handler":Lcmg;, "Lcmg<Lfpi;Lcom/alibaba/android/user/model/OrgInviteObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1473
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1474
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getActiveInviteInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final e(JJLcma;)V
    .locals 7
    .param p1, "oid"    # J
    .param p3, "deptId"    # J
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
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 1692
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 1693
    :cond_0
    if-eqz p5, :cond_1

    .line 1694
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_1
    :goto_0
    return-void

    .line 1698
    :cond_2
    new-instance v0, Lfak$52;

    invoke-direct {v0, p0, p5}, Lfak$52;-><init>(Lfak;Lcma;)V

    .line 1704
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1705
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_3

    .line 1706
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeDept(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final e(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
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
    .line 1521
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1522
    if-eqz p3, :cond_0

    .line 1523
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "orgId is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    new-instance v0, Lfak$45;

    invoke-direct {v0, p0, p3}, Lfak$45;-><init>(Lfak;Lcma;)V

    .line 1534
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1535
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_2

    .line 1536
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1539
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgDomain(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final f(JLcma;)V
    .locals 5
    .param p1, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1714
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1715
    if-eqz p3, :cond_0

    .line 1716
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    new-instance v0, Lfak$53;

    invoke-direct {v0, p0, p3}, Lfak$53;-><init>(Lfak;Lcma;)V

    .line 1726
    .local v0, "handler":Lcmg;, "Lcmg<Lcet;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1727
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_2

    .line 1728
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1731
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgMainAdminInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final g(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1799
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1801
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    :goto_0
    return-void

    .line 1805
    :cond_0
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1806
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_1

    .line 1808
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "service is null"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1812
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lfak$57;

    invoke-direct {v2, p0, p3}, Lfak$57;-><init>(Lfak;Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/ContactIService;->deleteJoinTeamInvite(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final h(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1822
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1824
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :goto_0
    return-void

    .line 1828
    :cond_0
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1829
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_1

    .line 1831
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "service is null"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1835
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lfak$58;

    invoke-direct {v2, p0, p3}, Lfak$58;-><init>(Lfak;Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/ContactIService;->acceptJoinTeamInvite(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final i(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1906
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1907
    if-eqz p3, :cond_0

    .line 1908
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1914
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_2

    .line 1915
    if-eqz p3, :cond_0

    .line 1916
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_2
    new-instance v0, Lfak$61;

    invoke-direct {v0, p0, p3}, Lfak$61;-><init>(Lfak;Lcma;)V

    .line 1928
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->cancelRemoveOrg(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final j(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
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
    .line 1933
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1934
    if-eqz p3, :cond_0

    .line 1935
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1940
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v1, :cond_2

    .line 1941
    if-eqz p3, :cond_0

    .line 1942
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :cond_2
    new-instance v0, Lfak$62;

    invoke-direct {v0, p0, p3}, Lfak$62;-><init>(Lfak;Lcma;)V

    .line 1952
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->generateOrgApplyCode(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
