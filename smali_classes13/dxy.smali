.class public final Ldxy;
.super Ljava/lang/Object;
.source "IMApiImpl.java"

# interfaces
.implements Ldxx;


# static fields
.field private static b:Ldxy;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldxy;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public static declared-synchronized a()Ldxx;
    .locals 2

    .prologue
    .line 43
    const-class v1, Ldxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldxy;->b:Ldxy;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ldxy;

    invoke-direct {v0}, Ldxy;-><init>()V

    sput-object v0, Ldxy;->b:Ldxy;

    .line 47
    :cond_0
    sget-object v0, Ldxy;->b:Ldxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "apiEventListener"    # Lcma;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-interface {p0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(JJLcma;)V
    .locals 5
    .param p1, "receiverUid"    # J
    .param p3, "messageId"    # J
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
    .line 56
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$1;

    invoke-direct {v0, p0, p5}, Ldxy$1;-><init>(Ldxy;Lcma;)V

    .line 62
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 63
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->sendMessageBySms(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 66
    :cond_0
    return-void
.end method

.method public final a(JJLjava/lang/Boolean;Lcma;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "includeHide"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v7, Ldxy$6;

    invoke-direct {v7, p0, p6}, Ldxy$6;-><init>(Ldxy;Lcma;)V

    .line 262
    .local v7, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 263
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->includeSubDept(JJLjava/lang/Boolean;Liyv;)V

    .line 264
    return-void
.end method

.method public final a(JJZLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "useDeptName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$21;

    invoke-direct {v0, p0, p6}, Ldxy$21;-><init>(Ldxy;Lcma;)V

    .line 90
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 91
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->createDeptGroup(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "msgId"    # J
    .param p3, "listener"    # Lcma;

    .prologue
    .line 98
    new-instance v0, Ldxy$25;

    invoke-direct {v0, p0, p3}, Ldxy$25;-><init>(Ldxy;Lcma;)V

    .line 104
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 105
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->recallYunpanMsg(Ljava/lang/Long;Liyv;)V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Lcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$29;

    invoke-direct {v0, p0, p4}, Ldxy$29;-><init>(Ldxy;Lcma;)V

    .line 179
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;

    .line 180
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;->getChatIdByCid(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 181
    return-void
.end method

.method public final a(JLjava/util/List;Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p4, "returnFieldBit"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;>;>;"
    const/4 v4, 0x0

    .line 113
    new-instance v0, Ldxy$26;

    invoke-direct {v0, p0, p5}, Ldxy$26;-><init>(Ldxy;Lcma;)V

    .line 127
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcdx;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 128
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 129
    :cond_0
    invoke-interface {p5, v4, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->groupMembersView(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Long;Liyv;)V

    .line 132
    return-void
.end method

.method public final a(Ldqx;Lcma;)V
    .locals 6
    .param p1, "object"    # Ldqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldqx;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    .line 3034
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p1, :cond_1

    .line 3035
    const/4 v1, 0x0

    .line 474
    .local v1, "model":Ldss;
    :goto_0
    if-nez v1, :cond_2

    .line 475
    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->unknown_error:I

    .line 476
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-static {p2, v3, v4}, Ldxy;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_1
    return-void

    .line 3037
    .end local v1    # "model":Ldss;
    :cond_1
    new-instance v1, Ldss;

    invoke-direct {v1}, Ldss;-><init>()V

    .line 3038
    iget-object v3, p1, Ldqx;->a:Ljava/lang/String;

    iput-object v3, v1, Ldss;->a:Ljava/lang/String;

    .line 3039
    iget-object v3, p1, Ldqx;->b:Ljava/util/List;

    iput-object v3, v1, Ldss;->b:Ljava/util/List;

    .line 3040
    iget-object v3, p1, Ldqx;->c:Ljava/util/List;

    iput-object v3, v1, Ldss;->c:Ljava/util/List;

    goto :goto_0

    .line 479
    .restart local v1    # "model":Ldss;
    :cond_2
    new-instance v0, Ldxy$20;

    invoke-direct {v0, p0, p2}, Ldxy$20;-><init>(Ldxy;Lcma;)V

    .line 487
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v3, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 488
    .local v2, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v2, :cond_0

    .line 489
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->coopGroupAddMembers(Ldss;Liyv;)V

    goto :goto_1
.end method

.method public final a(Ldqy;Lcma;)V
    .locals 6
    .param p1, "requestObject"    # Ldqy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldqy;",
            "Lcma",
            "<",
            "Ldqz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    .line 2031
    .local p2, "apiEventListener":Lcma;, "Lcma<Ldqz;>;"
    if-nez p1, :cond_1

    .line 2032
    const/4 v1, 0x0

    .line 447
    .local v1, "model":Ldst;
    :goto_0
    if-nez v1, :cond_2

    .line 448
    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->unknown_error:I

    .line 449
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-static {p2, v3, v4}, Ldxy;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_1
    return-void

    .line 2034
    .end local v1    # "model":Ldst;
    :cond_1
    new-instance v1, Ldst;

    invoke-direct {v1}, Ldst;-><init>()V

    .line 2035
    iget-object v3, p1, Ldqy;->a:Ljava/lang/String;

    iput-object v3, v1, Ldst;->a:Ljava/lang/String;

    .line 2036
    iget-object v3, p1, Ldqy;->b:Ljava/util/List;

    iput-object v3, v1, Ldst;->b:Ljava/util/List;

    goto :goto_0

    .line 452
    .restart local v1    # "model":Ldst;
    :cond_2
    new-instance v0, Ldxy$19;

    invoke-direct {v0, p0, p2}, Ldxy$19;-><init>(Ldxy;Lcma;)V

    .line 460
    .local v0, "handler":Lcmg;, "Lcmg<Ldsu;Ldqz;>;"
    const-class v3, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 461
    .local v2, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->coopGroupCheckMembers(Ldst;Liyv;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$10;

    invoke-direct {v0, p0, p4}, Ldxy$10;-><init>(Ldxy;Lcma;)V

    .line 76
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 77
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 78
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->convertToOrgGroup(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    .line 80
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;>;"
    new-instance v0, Ldxy$12;

    invoke-direct {v0, p0, p2}, Ldxy$12;-><init>(Ldxy;Lcma;)V

    .line 344
    .local v0, "handler":Lcmg;, "Lcmg<Ldtp;Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 345
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getUpgradeGroupOrgId(Ljava/lang/String;Liyv;)V

    .line 348
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v0, Ldxy$14;

    invoke-direct {v0, p0, p3}, Ldxy$14;-><init>(Ldxy;Lcma;)V

    .line 374
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 375
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getRemovedMembersInnerGroup(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    .line 378
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    .local p3, "removeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$17;

    invoke-direct {v0, p0, p4}, Ldxy$17;-><init>(Ldxy;Lcma;)V

    .line 418
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 419
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->upgradeToInnerGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Liyv;)V

    .line 422
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 531
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$24;

    invoke-direct {v0, p0, p3}, Ldxy$24;-><init>(Ldxy;Lcma;)V

    .line 537
    .local v0, "handlerExt":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 538
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 539
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->setAddFriendForbidden(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 541
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    .local p2, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v0, Ldxy$13;

    invoke-direct {v0, p0, p3}, Ldxy$13;-><init>(Ldxy;Lcma;)V

    .line 359
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 360
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getRemovedMembersCooperativeGroup(Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 363
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    .local p2, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "removeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$15;

    invoke-direct {v0, p0, p4}, Ldxy$15;-><init>(Ldxy;Lcma;)V

    .line 389
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 390
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->upgradeToCooperativeGroup(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Liyv;)V

    .line 393
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$3;

    invoke-direct {v0, p0, p2}, Ldxy$3;-><init>(Ldxy;Lcma;)V

    .line 214
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 215
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->createConvByCallRecord(Ljava/util/List;Liyv;)V

    .line 216
    return-void
.end method

.method public final b(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
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
    .line 268
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v6, Ldxy$7;

    invoke-direct {v6, p0, p5}, Ldxy$7;-><init>(Ldxy;Lcma;)V

    .line 274
    .local v6, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    move-wide v2, p1

    move-wide v4, p3

    .line 275
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->excludeSubDept(JJLiyv;)V

    .line 276
    return-void
.end method

.method public final b(JLcma;)V
    .locals 5
    .param p1, "customerId"    # J
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
    .line 136
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$27;

    invoke-direct {v0, p0, p3, p1, p2}, Ldxy$27;-><init>(Ldxy;Lcma;J)V

    .line 148
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Ldxy;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldxy;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 149
    iget-object v2, p0, Ldxy;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 153
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getCidByCustomId(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final b(JLjava/lang/String;Lcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$30;

    invoke-direct {v0, p0, p4}, Ldxy$30;-><init>(Ldxy;Lcma;)V

    .line 190
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;

    .line 191
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationOpenIService;->getCidByChatIdNoAuth(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 192
    return-void
.end method

.method public final b(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$2;

    invoke-direct {v0, p0, p4}, Ldxy$2;-><init>(Ldxy;Lcma;)V

    .line 202
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 203
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->addGroupMember(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    .line 204
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;>;"
    new-instance v0, Ldxy$18;

    invoke-direct {v0, p0, p2}, Ldxy$18;-><init>(Ldxy;Lcma;)V

    .line 432
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Ldud;>;Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 433
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getCooperativeOrgs(Ljava/lang/String;Liyv;)V

    .line 436
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;>;"
    new-instance v0, Ldxy$11;

    invoke-direct {v0, p0, p2}, Ldxy$11;-><init>(Ldxy;Lcma;)V

    .line 330
    .local v0, "handler":Lcmg;, "Lcmg<Ldtq;Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 331
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->recommendGroupType(Ljava/util/List;Liyv;)V

    .line 334
    :cond_0
    return-void
.end method

.method public final c(JJLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$8;

    invoke-direct {v0, p0, p5}, Ldxy$8;-><init>(Ldxy;Lcma;)V

    .line 299
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 300
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 301
    :cond_0
    const-string/jumbo v2, "err_parameter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "orgId is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getGroupByDeptId(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final c(JLcma;)V
    .locals 3
    .param p1, "lastVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;>;"
    new-instance v0, Ldxy$28;

    invoke-direct {v0, p0, p3}, Ldxy$28;-><init>(Ldxy;Lcma;)V

    .line 166
    .local v0, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 167
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getDefaultGroupIcons(Ljava/lang/Long;Liyv;)V

    .line 170
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$16;

    invoke-direct {v0, p0, p4}, Ldxy$16;-><init>(Ldxy;Lcma;)V

    .line 403
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 404
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->upgradeToServiceGroup(Ljava/lang/String;JLiyv;)V

    .line 407
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->unknown_error:I

    .line 497
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-static {p2, v2, v3}, Ldxy;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v0, Ldxy$22;

    invoke-direct {v0, p0, p2}, Ldxy$22;-><init>(Ldxy;Lcma;)V

    .line 509
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 510
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->getOrgInviteInfoByQrcode(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final d(JLcma;)V
    .locals 3
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
    .line 220
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldxy$4;

    invoke-direct {v0, p0, p3}, Ldxy$4;-><init>(Ldxy;Lcma;)V

    .line 226
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 227
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->createAllEmpGroup(JLiyv;)V

    .line 228
    return-void
.end method

.method public final d(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Ldxy$23;

    invoke-direct {v0, p0, p2}, Ldxy$23;-><init>(Ldxy;Lcma;)V

    .line 523
    .local v0, "handlerExt":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 524
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->checkCanBeUpgradeServiceGroup(Ljava/lang/String;Liyv;)V

    .line 527
    :cond_0
    return-void
.end method

.method public final e(JLcma;)V
    .locals 3
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
    .line 232
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxy$5;

    invoke-direct {v0, p0, p3}, Ldxy$5;-><init>(Ldxy;Lcma;)V

    .line 238
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 239
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->disbandAllEmpGroup(JLiyv;)V

    .line 240
    return-void
.end method

.method public final f(JLcma;)V
    .locals 3
    .param p1, "msgId"    # J
    .param p3, "listener"    # Lcma;

    .prologue
    .line 309
    new-instance v0, Ldxy$9;

    invoke-direct {v0, p0, p3}, Ldxy$9;-><init>(Ldxy;Lcma;)V

    .line 316
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 317
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    if-eqz v1, :cond_0

    .line 318
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->shieldYunpanMsg(Ljava/lang/Long;Liyv;)V

    .line 320
    :cond_0
    return-void
.end method
