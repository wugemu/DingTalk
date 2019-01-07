.class public final Lidr;
.super Ljava/lang/Object;
.source "UserConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/conversation/MemberRole;)Lcom/alibaba/wukong/im/Member;
    .locals 4
    .param p0, "memberRole"    # Lcom/alibaba/wukong/im/conversation/MemberRole;

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/user/MemberImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/MemberImpl;-><init>()V

    .line 339
    .local v0, "member":Lcom/alibaba/wukong/im/user/MemberImpl;
    new-instance v1, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 340
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    iput-wide v2, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 341
    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/MemberRole;->mTag:J

    iput-wide v2, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 342
    iput-object v1, v0, Lcom/alibaba/wukong/im/user/MemberImpl;->mUser:Lcom/alibaba/wukong/im/User;

    .line 343
    iget v2, p0, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    invoke-static {v2}, Lcom/alibaba/wukong/im/Member$RoleType;->fromValue(I)Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/MemberImpl;->mRoleType:Lcom/alibaba/wukong/im/Member$RoleType;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/idl/im/models/MemberMessageStatusModel;)Lcom/alibaba/wukong/im/Message$ReadStatus;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/MemberMessageStatusModel;

    .prologue
    .line 368
    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNDELIVERED:Lcom/alibaba/wukong/im/Message$ReadStatus;

    .line 369
    .local v1, "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 378
    .end local v1    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    .local v2, "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :goto_0
    return-object v2

    .line 371
    .end local v2    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    .restart local v1    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/wukong/idl/im/models/MemberMessageStatusModel;->status:Ljava/lang/Integer;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v3

    .line 372
    .local v3, "status":I
    iget-object v4, p0, Lcom/alibaba/wukong/idl/im/models/MemberMessageStatusModel;->reachStatus:Ljava/lang/Integer;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    .line 373
    .local v0, "reachStatus":I
    sget-object v4, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 374
    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    :cond_1
    :goto_1
    move-object v2, v1

    .line 378
    .end local v1    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    .restart local v2    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    goto :goto_0

    .line 375
    .end local v2    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    .restart local v1    # "readStatus":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 376
    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;)Lcom/alibaba/wukong/im/conversation/MemberRole;
    .locals 4
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p1, "model"    # Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-nez v2, :cond_2

    .line 156
    :cond_0
    const/4 v1, 0x0

    .line 170
    :cond_1
    :goto_0
    return-object v1

    .line 158
    :cond_2
    new-instance v1, Lcom/alibaba/wukong/im/conversation/MemberRole;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/conversation/MemberRole;-><init>()V

    .line 159
    .local v1, "object":Lcom/alibaba/wukong/im/conversation/MemberRole;
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    .line 160
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mTag:J

    .line 161
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->role:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 162
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    if-eqz v2, :cond_1

    .line 163
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 164
    .local v0, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 165
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 166
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->tag:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 167
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 168
    iput-object v0, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mGroupNickObject:Lcom/alibaba/wukong/im/GroupNickObject;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    .line 384
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 385
    .local v0, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 386
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    goto :goto_0
.end method

.method public static declared-synchronized a(JJ)V
    .locals 8
    .param p0, "openId"    # J
    .param p2, "tag"    # J

    .prologue
    .line 41
    const-class v4, Lidr;

    monitor-enter v4

    const-wide/16 v6, 0x0

    cmp-long v3, p0, v6

    if-nez v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 42
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-nez v3, :cond_2

    .line 43
    new-instance v2, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 44
    .local v2, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    iput-wide p0, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 45
    iput-wide p2, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 46
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v3

    invoke-virtual {v3, v2}, Lidq;->a(Lcom/alibaba/wukong/im/user/UserImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    .end local v2    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 50
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    .line 51
    .local v0, "oldUserObject":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->version()J

    move-result-wide v6

    cmp-long v3, p2, v6

    if-lez v3, :cond_0

    .line 52
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v1}, Lidr;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "modelList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    const-class v7, Lidr;

    monitor-enter v7

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 103
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Lcom/alibaba/wukong/im/OpenIdExObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    invoke-static {v1}, Lidt;->a(Ljava/util/List;)V

    .line 106
    sget-boolean v6, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-nez v6, :cond_4

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .line 109
    .local v2, "openIdExModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    if-eqz v8, :cond_2

    .line 111
    new-instance v4, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 112
    .local v4, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 113
    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v8}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 114
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    .end local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v1    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    .end local v2    # "openIdExModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .end local v4    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 116
    .restart local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .restart local v1    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v6

    invoke-virtual {v6, v0}, Lidq;->a(Ljava/util/List;)Ljava/util/ArrayList;

    goto :goto_0

    .line 120
    .end local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .line 122
    .restart local v2    # "openIdExModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 125
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v5

    .line 126
    .local v5, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v5, :cond_6

    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/user/UserImpl;->version()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 127
    :cond_6
    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    .end local v2    # "openIdExModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .end local v5    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    invoke-static {v3}, Lidr;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v0

    new-instance v1, Lidr$1;

    invoke-direct {v1}, Lidr$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lidu;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 152
    return-void
.end method

.method public static a(Ljava/util/List;ZLcom/alibaba/wukong/Callback;)V
    .locals 12
    .param p1, "checkTag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "roleModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 180
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    sget-boolean v7, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-nez v7, :cond_4

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/conversation/MemberRole;

    .line 187
    .local v5, "role":Lcom/alibaba/wukong/im/conversation/MemberRole;
    invoke-static {v5}, Lidr;->a(Lcom/alibaba/wukong/im/conversation/MemberRole;)Lcom/alibaba/wukong/im/Member;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v5    # "role":Lcom/alibaba/wukong/im/conversation/MemberRole;
    :cond_3
    if-eqz p2, :cond_1

    .line 190
    invoke-interface {p2, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    .end local v2    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v2    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v4, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v3, "openIdAndRoleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/MemberRole;

    .line 198
    .local v1, "memberRole":Lcom/alibaba/wukong/im/conversation/MemberRole;
    if-eqz v1, :cond_5

    .line 201
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v8

    iget-wide v10, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    invoke-virtual {v8, v10, v11}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v6

    .line 202
    .local v6, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v6, :cond_6

    if-eqz p1, :cond_7

    iget-wide v8, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mTag:J

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/user/UserImpl;->version()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 203
    :cond_6
    iget-wide v8, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-wide v8, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 206
    :cond_7
    new-instance v0, Lcom/alibaba/wukong/im/user/MemberImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/MemberImpl;-><init>()V

    .line 207
    .local v0, "member":Lcom/alibaba/wukong/im/user/MemberImpl;
    iput-object v6, v0, Lcom/alibaba/wukong/im/user/MemberImpl;->mUser:Lcom/alibaba/wukong/im/User;

    .line 208
    iget v8, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    invoke-static {v8}, Lcom/alibaba/wukong/im/Member$RoleType;->fromValue(I)Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/wukong/im/user/MemberImpl;->mRoleType:Lcom/alibaba/wukong/im/Member$RoleType;

    .line 209
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    .end local v0    # "member":Lcom/alibaba/wukong/im/user/MemberImpl;
    .end local v1    # "memberRole":Lcom/alibaba/wukong/im/conversation/MemberRole;
    .end local v6    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 214
    if-eqz p2, :cond_1

    .line 215
    invoke-interface {p2, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v7

    new-instance v8, Lidr$2;

    invoke-direct {v8, v3, v2, p2}, Lidr$2;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v7, v4, v8}, Lidu;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-class v7, Lidr;

    monitor-enter v7

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 65
    :cond_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 66
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    sget-boolean v6, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-nez v6, :cond_4

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_2

    .line 71
    new-instance v4, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 72
    .local v4, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-static {v6}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    .end local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    .end local v4    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 77
    .restart local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .restart local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v6

    invoke-virtual {v6, v0}, Lidq;->a(Ljava/util/List;)Ljava/util/ArrayList;

    goto :goto_0

    .line 81
    .end local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_5

    .line 85
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v5

    .line 86
    .local v5, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/user/UserImpl;->version()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    .line 87
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    invoke-static {v2}, Lidr;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
