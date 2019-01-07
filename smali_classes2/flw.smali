.class public Lflw;
.super Ljava/lang/Object;
.source "MatchContactUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfqq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lfqq;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 87
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    new-instance v2, Lfqq;

    invoke-direct {v2}, Lfqq;-><init>()V

    .line 88
    .local v2, "phonebookModel":Lfqq;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v4, v2, Lfqq;->a:Ljava/lang/String;

    .line 89
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v4, v2, Lfqq;->b:Ljava/lang/String;

    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v2    # "phonebookModel":Lfqq;
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PhonebookObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .local p1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PhonebookObject;>;"
    if-nez p0, :cond_1

    .line 102
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :cond_0
    return-object p0

    .line 104
    .restart local p0    # "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_1
    if-nez p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 109
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_3

    .line 113
    const-string/jumbo v3, "Y"

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PhonebookObject;

    .line 115
    .local v1, "phonebookObject":Lcom/alibaba/android/user/model/PhonebookObject;
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 118
    iget-object v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    iget-wide v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->uid:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 120
    iget v3, v1, Lcom/alibaba/android/user/model/PhonebookObject;->tag:I

    iput v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .local p1, "friendMobiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lfrz;>;"
    const-class v4, Lflw;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    .line 171
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 172
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 173
    if-eqz p1, :cond_2

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    int-to-long v6, v3

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 175
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfrz;

    iget-wide v8, v3, Lfrz;->f:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 176
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-class v3, Lflw;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 179
    .restart local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    :try_start_3
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static a(J)V
    .locals 2
    .param p0, "cursor"    # J

    .prologue
    .line 77
    const-string/jumbo v0, "key_syn_contact_cursor"

    invoke-static {v0, p0, p1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 78
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isNeedSyn"    # Z

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    const-string/jumbo v0, "match_contact_thread_group"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflw$2;

    invoke-direct {v1, p0}, Lflw$2;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lflw;->b(ZZ)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "isOpen"    # Z

    .prologue
    .line 65
    const-string/jumbo v0, "key_match_contact_switch"

    invoke-static {v0, p0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method static synthetic a(ZZ)V
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lflw;->b(ZZ)V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "key_match_contact_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v0, "key_syn_contact_cursor"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-nez p0, :cond_1

    .line 134
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local p0    # "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_0
    return-object p0

    .line 136
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 137
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    const-string/jumbo v2, "Y"

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p1, "friendMobiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lfrz;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 194
    .local v1, "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrz;

    .line 196
    .local v0, "simpleUserProfile":Lfrz;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->b:Ljava/lang/String;

    .line 197
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->d:Ljava/lang/String;

    .line 198
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->e:Ljava/lang/String;

    .line 199
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lfrz;->h:Z

    goto :goto_0

    .line 201
    .end local v0    # "simpleUserProfile":Lfrz;
    :cond_0
    new-instance v0, Lfrz;

    invoke-direct {v0}, Lfrz;-><init>()V

    .line 202
    .restart local v0    # "simpleUserProfile":Lfrz;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->c:Ljava/lang/String;

    .line 203
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->b:Ljava/lang/String;

    .line 204
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->d:Ljava/lang/String;

    .line 205
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v3, v0, Lfrz;->e:Ljava/lang/String;

    .line 206
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v4, v0, Lfrz;->a:J

    .line 207
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lfrz;->h:Z

    .line 208
    const/4 v3, 0x0

    iput-boolean v3, v0, Lfrz;->g:Z

    .line 209
    iget-wide v4, v0, Lfrz;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    .end local v0    # "simpleUserProfile":Lfrz;
    .end local v1    # "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void
.end method

.method private static b(ZZ)V
    .locals 5
    .param p0, "isNeedUpload"    # Z
    .param p1, "isNeedSyn"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 295
    const-string/jumbo v0, "uploadLocalContacts, isNeedUpload=%b, isNeedSyn=%b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    if-eqz p0, :cond_1

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_phonebook_contacts_upload"

    .line 1083
    invoke-virtual {v0, v1, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lflv;->a(ZZ)V

    .line 302
    if-eqz p1, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_contact_sync_phone_contact_occasion_new"

    .line 2083
    invoke-virtual {v0, v1, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-static {}, Lflw;->e()V

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 163
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v0

    new-instance v1, Lflw$1;

    invoke-direct {v1}, Lflw$1;-><init>()V

    invoke-interface {v0, v1}, Lezy;->a(Lcma;)V

    goto :goto_0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lflw;->e()V

    return-void
.end method

.method private static e()V
    .locals 6

    .prologue
    .line 313
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has_copy_local_contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 314
    .local v0, "hasCopy":Z
    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v1, "syncSystemLocalContacts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/content/Context;)V

    .line 319
    :cond_0
    return-void
.end method
