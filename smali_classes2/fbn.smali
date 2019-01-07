.class public final Lfbn;
.super Ljava/lang/Object;
.source "UserProfileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfbn$a;
    }
.end annotation


# instance fields
.field public a:Lfbn$a;

.field public b:Lcjp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lfbn;->a:Lfbn$a;

    .line 32
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lfbn;->b:Lcjp;

    .line 35
    new-instance v0, Lfbn$a;

    invoke-direct {v0, p0}, Lfbn$a;-><init>(Lfbn;)V

    iput-object v0, p0, Lfbn;->a:Lfbn$a;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 39
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v1, p1, p2}, Lfbn$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 43
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2}, Lfbn;->c(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 268
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 269
    .local v0, "evt":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 270
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lfbn;->b:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 272
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 122
    iget-object v0, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v0, p1}, Lfbn$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 123
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 158
    .line 5161
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5162
    if-eqz v0, :cond_0

    .line 5163
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5165
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5166
    :catch_0
    move-exception v0

    .line 5167
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 5173
    :cond_1
    iget-object v0, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v0, p1}, Lfbn$a;->a(Ljava/util/List;)V

    .line 5174
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5175
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, v0}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    :goto_1
    return-void

    .line 5227
    :cond_2
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->c()Lfna;

    move-result-object v0

    .line 5177
    invoke-interface {v0, p1}, Lfna;->a(Ljava/util/List;)I

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 96
    .local p1, "cachedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p2, "needToLoadEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lfbn;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->c()Lfna;

    move-result-object v3

    .line 100
    invoke-interface {v3, p2}, Lfna;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 103
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_2

    .line 105
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_3
    :goto_2
    iget-object v4, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v4, v1}, Lfbn$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 114
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .param p3, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 68
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p2, "nonExists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lfbn;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :cond_0
    return-void

    .line 1227
    :cond_1
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->c()Lfna;

    move-result-object v3

    .line 72
    invoke-interface {v3, p2}, Lfna;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 75
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_2

    .line 77
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_3
    :goto_1
    iget-object v4, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v4, v1}, Lfbn$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 86
    if-eqz p3, :cond_4

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 7227
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->c()Lfna;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 9219
    iget-object v0, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v0}, Lfbn$a;->a()V

    .line 9227
    :cond_0
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->c()Lfna;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    if-nez v0, :cond_1

    .line 241
    const/4 v0, 0x0

    .line 244
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 7227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v0, p1, p2}, Lfbn$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lfbn;->c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lfbn;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 185
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 10227
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->c()Lfna;

    move-result-object v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 5
    .param p1, "uid"    # J

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lfbn;->b()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 148
    :goto_0
    return-object v1

    .line 3227
    :cond_0
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->c()Lfna;

    move-result-object v3

    .line 131
    invoke-interface {v3, p1, p2}, Lfna;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 132
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v1, :cond_1

    move-object v1, v2

    .line 133
    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    :try_start_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 4227
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->c()Lfna;

    move-result-object v2

    .line 140
    invoke-interface {v2, v1}, Lfna;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_2
    :goto_1
    iget-object v2, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v2, v1}, Lfbn$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 147
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lfbn;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    invoke-virtual {p0}, Lfbn;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_2
    :goto_1
    iget-object v1, p0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v1, p1}, Lfbn$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 6227
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v1

    .line 203
    invoke-interface {v1, p1}, Lfna;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)I

    .line 204
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
