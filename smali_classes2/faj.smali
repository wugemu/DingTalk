.class public Lfaj;
.super Ljava/lang/Object;
.source "CommonApiImpl.java"

# interfaces
.implements Lfbi;


# static fields
.field private static a:Lfbi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfbi;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lfaj;->a:Lfbi;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lfaj;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lfaj;->a:Lfbi;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lfaj;

    invoke-direct {v0}, Lfaj;-><init>()V

    sput-object v0, Lfaj;->a:Lfbi;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lfaj;->a:Lfbi;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 130
    .local p1, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;>;"
    new-instance v1, Lfaj$2;

    invoke-direct {v1, p0, p1}, Lfaj$2;-><init>(Lfaj;Lcma;)V

    .line 147
    .local v1, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcfy;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;>;"
    new-instance v0, Lhzx;

    invoke-direct {v0}, Lhzx;-><init>()V

    .line 148
    .local v0, "filter":Lhzx;
    const-wide/16 v4, 0xbb8

    .line 2043
    iput-wide v4, v0, Lhzx;->a:J

    .line 149
    invoke-virtual {v1, v0}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 150
    const-class v3, Lcom/alibaba/android/user/idl/services/CommonIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/CommonIService;

    .line 151
    .local v2, "service":Lcom/alibaba/android/user/idl/services/CommonIService;
    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v2, v1}, Lcom/alibaba/android/user/idl/services/CommonIService;->getTeamScale(Liyv;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/ChannelInfoObject;Lcma;)V
    .locals 3
    .param p1, "channelInfoObject"    # Lcom/alibaba/android/user/model/ChannelInfoObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/model/ChannelInfoObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/ChannelInfoResponseObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 194
    .local p2, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ChannelInfoResponseObject;>;"
    iget-object v2, p1, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    new-instance v0, Lfaj$5;

    invoke-direct {v0, p0, p2}, Lfaj$5;-><init>(Lfaj;Lcma;)V

    .line 206
    .local v0, "handler":Lcmg;, "Lcmg<Lfog;Lcom/alibaba/android/user/model/ChannelInfoResponseObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;

    .line 207
    .local v1, "service":Lcom/alibaba/android/user/idl/services/DingTalkChannelI;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/alibaba/android/user/model/ChannelInfoObject;->toIDLModel()Lfof;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;->uploadInstallInfo(Lfof;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "industryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/JobPositionEntryObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 100
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;>;"
    new-instance v1, Lfaj$1;

    invoke-direct {v1, p0, p2}, Lfaj$1;-><init>(Lfaj;Lcma;)V

    .line 118
    .local v1, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lfov;>;Ljava/util/List<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;>;"
    new-instance v0, Lhzx;

    invoke-direct {v0}, Lhzx;-><init>()V

    .line 119
    .local v0, "filter":Lhzx;
    const-wide/16 v4, 0xbb8

    .line 1043
    iput-wide v4, v0, Lhzx;->a:J

    .line 120
    invoke-virtual {v1, v0}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 122
    const-class v3, Lcom/alibaba/android/user/idl/services/CommonIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/CommonIService;

    .line 123
    .local v2, "service":Lcom/alibaba/android/user/idl/services/CommonIService;
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v2, p1, v1}, Lcom/alibaba/android/user/idl/services/CommonIService;->getJobPositions(Ljava/lang/String;Liyv;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final b(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/DeviceSwitchObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 178
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/DeviceSwitchObject;>;>;"
    new-instance v0, Lfaj$4;

    invoke-direct {v0, p0, p1}, Lfaj$4;-><init>(Lfaj;Lcma;)V

    .line 186
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lfoq;>;Ljava/util/List<Lcom/alibaba/android/user/model/DeviceSwitchObject;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CommonIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CommonIService;

    .line 187
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CommonIService;
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/CommonIService;->getDeviceSwitch(Lcmi;)V

    .line 190
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/ChannelInfoObject;Lcma;)V
    .locals 3
    .param p1, "channelInfoObject"    # Lcom/alibaba/android/user/model/ChannelInfoObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/model/ChannelInfoObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/ChannelInfoResponseObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 214
    .local p2, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ChannelInfoResponseObject;>;"
    iget-object v2, p1, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Lfaj$6;

    invoke-direct {v0, p0, p2}, Lfaj$6;-><init>(Lfaj;Lcma;)V

    .line 226
    .local v0, "handler":Lcmg;, "Lcmg<Lfog;Lcom/alibaba/android/user/model/ChannelInfoResponseObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;

    .line 227
    .local v1, "service":Lcom/alibaba/android/user/idl/services/DingTalkChannelI;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/android/user/model/ChannelInfoObject;->toIDLModel()Lfof;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/DingTalkChannelI;->uploadActiveInfo(Lfof;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "jobPositionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/JobPositionEntryObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 158
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;"
    new-instance v0, Lfaj$3;

    invoke-direct {v0, p0, p2}, Lfaj$3;-><init>(Lfaj;Lcma;)V

    .line 169
    .local v0, "handler":Lcmg;, "Lcmg<Lfov;Lcom/alibaba/android/user/model/JobPositionEntryObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CommonIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CommonIService;

    .line 170
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CommonIService;
    if-eqz v1, :cond_0

    .line 171
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/CommonIService;->getJobPositionByCode(Ljava/lang/String;Liyv;)V

    .line 173
    :cond_0
    return-void
.end method
