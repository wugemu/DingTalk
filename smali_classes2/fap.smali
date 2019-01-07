.class public final Lfap;
.super Ljava/lang/Object;
.source "FriendAPIImpl.java"

# interfaces
.implements Lezv;


# static fields
.field private static a:Lfap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized a()Lezv;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lfap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfap;->a:Lfap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lfap;

    invoke-direct {v0}, Lfap;-><init>()V

    sput-object v0, Lfap;->a:Lfap;

    .line 40
    :cond_0
    sget-object v0, Lfap;->a:Lfap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    new-instance v0, Lfap$14;

    invoke-direct {v0, p0, p4}, Lfap$14;-><init>(Lfap;Lcma;)V

    .line 95
    .local v0, "handler":Lcmg;, "Lcmg<Lcdq;Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 96
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriendList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 97
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "uid"    # J
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
    .line 208
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$15;

    invoke-direct {v0, p0, p3}, Lfap$15;-><init>(Lfap;Lcma;)V

    .line 214
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 215
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->removeFriend(Ljava/lang/Long;Liyv;)V

    .line 216
    return-void
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;Lcma;)V
    .locals 5
    .param p1, "friendUid"    # J
    .param p3, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;>;"
    new-instance v0, Lfap$7;

    invoke-direct {v0, p0, p4}, Lfap$7;-><init>(Lfap;Lcma;)V

    .line 466
    .local v0, "handler":Lcmg;, "Lcmg<Lcdu;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 467
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-eqz p3, :cond_0

    if-nez v1, :cond_1

    .line 468
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "FriendSettingObject is null"

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->toIdl()Lcdu;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->updateFriendSetting(Ljava/lang/Long;Lcdu;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/Boolean;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;Lcma;)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "confirmed"    # Ljava/lang/Boolean;
    .param p4, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$6;

    invoke-direct {v0, p0, p5}, Lfap$6;-><init>(Lfap;Lcma;)V

    .line 449
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 450
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-eqz p4, :cond_0

    if-nez v1, :cond_1

    .line 451
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "FriendRequestAcceptObject is null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->toIdl()Lcdr;

    move-result-object v3

    invoke-interface {v1, v2, p3, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->acceptFriendRequestV3(Ljava/lang/Long;Ljava/lang/Boolean;Lcdr;Liyv;)V

    goto :goto_0
.end method

.method public final a(JZLcma;)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$11;

    invoke-direct {v0, p0, p4}, Lfap$11;-><init>(Lfap;Lcma;)V

    .line 71
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 72
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->acceptFriendRequestV2(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    .line 73
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;Lcma;)V
    .locals 5
    .param p1, "friendObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 509
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    new-instance v0, Lfap$10;

    invoke-direct {v0, p0, p2}, Lfap$10;-><init>(Lfap;Lcma;)V

    .line 515
    .local v0, "handler":Lcmg;, "Lcmg<Lcdp;Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 516
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-nez v1, :cond_0

    .line 517
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 6033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->toIdl()Lcdp;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->updateFriend(Lcdp;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V
    .locals 5
    .param p1, "request"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    .param p2, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$1;

    invoke-direct {v0, p0, p3}, Lfap$1;-><init>(Lfap;Lcma;)V

    .line 55
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 56
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 57
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "FriendRequestObject is null"

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->toIdl()Lcds;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->sendFriendRequestV2(Lcds;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;JILcma;)V
    .locals 4
    .param p2, "cursor"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    new-instance v0, Lfap$12;

    invoke-direct {v0, p0, p5}, Lfap$12;-><init>(Lfap;Lcma;)V

    .line 543
    .local v0, "handler":Lcmg;, "Lcmg<Lcdq;Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 544
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriendListWithCardByStatus(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 545
    return-void
.end method

.method public final b(JILcma;)V
    .locals 4
    .param p1, "cursor"    # J
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    new-instance v0, Lfap$2;

    invoke-direct {v0, p0, p4}, Lfap$2;-><init>(Lfap;Lcma;)V

    .line 251
    .local v0, "handler":Lcmg;, "Lcmg<Lcdq;Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 252
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getShowMobileFriendList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 253
    return-void
.end method

.method public final b(JLcma;)V
    .locals 3
    .param p1, "uid"    # J
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
    .line 220
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$16;

    invoke-direct {v0, p0, p3}, Lfap$16;-><init>(Lfap;Lcma;)V

    .line 226
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 227
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->removeFriendRequest(Ljava/lang/Long;Liyv;)V

    .line 228
    return-void
.end method

.method public final b(JZLcma;)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "accept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfap$17;

    invoke-direct {v0, p0, p4}, Lfap$17;-><init>(Lfap;Lcma;)V

    .line 239
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 240
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->updateShowMobile(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    .line 241
    return-void
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
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    new-instance v0, Lfap$3;

    invoke-direct {v0, p0, p4, p4}, Lfap$3;-><init>(Lfap;Lcma;Lcma;)V

    .line 313
    .local v0, "handler":Lcmg;, "Lcmg<Lcdt;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 314
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getLatestFriendRequestList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 315
    return-void
.end method

.method public final c(JLcma;)V
    .locals 5
    .param p1, "friendUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;>;"
    new-instance v0, Lfap$8;

    invoke-direct {v0, p0, p3}, Lfap$8;-><init>(Lfap;Lcma;)V

    .line 483
    .local v0, "handler":Lcmg;, "Lcmg<Lcdu;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 484
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-nez v1, :cond_0

    .line 485
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 4033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriendSetting(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final d(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    new-instance v0, Lfap$4;

    invoke-direct {v0, p0, p4, p4}, Lfap$4;-><init>(Lfap;Lcma;Lcma;)V

    .line 375
    .local v0, "handler":Lcmg;, "Lcmg<Lcdt;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 376
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriendRequestListV3(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 377
    return-void
.end method

.method public final d(JLcma;)V
    .locals 5
    .param p1, "destUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    new-instance v0, Lfap$9;

    invoke-direct {v0, p0, p3}, Lfap$9;-><init>(Lfap;Lcma;)V

    .line 499
    .local v0, "handler":Lcmg;, "Lcmg<Lcdp;Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 500
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    if-nez v1, :cond_0

    .line 501
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriend(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final e(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    new-instance v0, Lfap$5;

    invoke-direct {v0, p0, p4, p4}, Lfap$5;-><init>(Lfap;Lcma;Lcma;)V

    .line 437
    .local v0, "handler":Lcmg;, "Lcmg<Lcdt;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 438
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getFriendIntroduceList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 439
    return-void
.end method

.method public final f(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    new-instance v0, Lfap$13;

    invoke-direct {v0, p0, p4, p4}, Lfap$13;-><init>(Lfap;Lcma;Lcma;)V

    .line 606
    .local v0, "handler":Lcmg;, "Lcmg<Lcdt;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/FriendIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/FriendIService;

    .line 607
    .local v1, "service":Lcom/alibaba/android/user/idl/services/FriendIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/FriendIService;->getExColleagueIntroduceForNativeList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 608
    return-void
.end method
