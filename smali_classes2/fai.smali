.class public Lfai;
.super Ljava/lang/Object;
.source "ChannelsAPIImpl.java"

# interfaces
.implements Lezs;


# static fields
.field private static volatile a:Lfai;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lezs;
    .locals 3

    .prologue
    .line 34
    const-class v1, Lfai;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfai;->a:Lfai;

    if-nez v0, :cond_1

    .line 35
    const-class v2, Lfai;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    sget-object v0, Lfai;->a:Lfai;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lfai;

    invoke-direct {v0}, Lfai;-><init>()V

    sput-object v0, Lfai;->a:Lfai;

    .line 40
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
    :try_start_2
    sget-object v0, Lfai;->a:Lfai;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JILcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "markBit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v1, Lfai$6;

    invoke-direct {v1, p0, p4}, Lfai$6;-><init>(Lfai;Lcma;)V

    .line 74
    .local v1, "handler":Lcme;, "Lcme<Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 75
    .local v0, "contactIService":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgSettingSwitch(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 76
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "id"    # J
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
    .line 88
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lfai$8;

    invoke-direct {v1, p0, p3}, Lfai$8;-><init>(Lfai;Lcma;)V

    .line 90
    .local v1, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 91
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->acceptChannelApply(JLiyv;)V

    .line 92
    return-void
.end method

.method public final a(JLjava/util/List;Lcma;)V
    .locals 3
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lfai$4;

    invoke-direct {v1, p0, p4}, Lfai$4;-><init>(Lfai;Lcma;)V

    .line 58
    .local v1, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 59
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->sendChannelRequest(JLjava/util/List;Liyv;)V

    .line 60
    return-void
.end method

.method public final a(JZILcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "isOpen"    # Z
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
    .line 64
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lfai$5;

    invoke-direct {v1, p0, p5}, Lfai$5;-><init>(Lfai;Lcma;)V

    .line 66
    .local v1, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 67
    .local v0, "contactIService":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/alibaba/android/user/idl/services/ContactIService;->setOrgSettingSwitch(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Liyv;)V

    .line 68
    return-void
.end method

.method public final a(Lfoi;Lcma;)V
    .locals 3
    .param p1, "orgModel"    # Lfoi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfoi;",
            "Lcma",
            "<",
            "Lfoj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 130
    .local p2, "listener":Lcma;, "Lcma<Lfoj;>;"
    new-instance v1, Lfai$1;

    invoke-direct {v1, p0, p2}, Lfai$1;-><init>(Lfai;Lcma;)V

    .line 132
    .local v1, "handler":Lcme;, "Lcme<Lfoj;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 133
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->getChannelOrgPageShortInfo(Lfoi;Liyv;)V

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lfqv;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 170
    .local p3, "callback":Lcma;, "Lcma<Lfqv;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 171
    :cond_0
    if-eqz p3, :cond_1

    .line 172
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    new-instance v1, Lfai$3;

    invoke-direct {v1, p0, p3}, Lfai$3;-><init>(Lfai;Lcma;)V

    .line 191
    .local v1, "handler":Lcmi;, "Lcmi<Lfqv;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 192
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->getOrgPageWithTokenInProfile(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfoi;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lfoj;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 140
    .local p1, "orgModels":Ljava/util/List;, "Ljava/util/List<Lfoi;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lfoj;>;>;"
    new-instance v1, Lfai$2;

    invoke-direct {v1, p0, p2}, Lfai$2;-><init>(Lfai;Lcma;)V

    .line 142
    .local v1, "handler":Lcme;, "Lcme<Ljava/util/List<Lfoj;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 143
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->getChannelOrgPageShortInfoList(Ljava/util/List;Liyv;)V

    .line 144
    return-void
.end method

.method public final b(JILcma;)V
    .locals 3
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lfoe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "listener":Lcma;, "Lcma<Lfoe;>;"
    new-instance v1, Lfai$7;

    invoke-direct {v1, p0, p4}, Lfai$7;-><init>(Lfai;Lcma;)V

    .line 82
    .local v1, "handler":Lcme;, "Lcme<Lfoe;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 83
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    const/16 v2, 0x14

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->getChannelApplyList(JILiyv;)V

    .line 84
    return-void
.end method

.method public final c(JILcma;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lfai$9;

    invoke-direct {v1, p0, p4}, Lfai$9;-><init>(Lfai;Lcma;)V

    .line 98
    .local v1, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 99
    .local v0, "channelIService":Lcom/alibaba/android/user/idl/services/ChannelIService;
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->rejectChannelApply(JILiyv;)V

    .line 100
    return-void
.end method
