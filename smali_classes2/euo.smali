.class public abstract Leuo;
.super Leul;
.source "TeleConfBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lezd;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Leuo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leuo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Leuo;->c:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Leuo;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 436
    :cond_0
    const/4 v1, 0x0

    .line 452
    :goto_0
    monitor-exit p0

    return v1

    .line 439
    :cond_1
    const/4 v2, 0x0

    .line 440
    .local v2, "numDisConnected":I
    :try_start_1
    iget-object v4, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 441
    .local v3, "totalNumber":I
    iget-boolean v4, p0, Leuo;->c:Z

    if-eqz v4, :cond_2

    .line 442
    add-int/lit8 v3, v3, -0x1

    .line 444
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 445
    iget-object v4, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezd;

    invoke-virtual {v4}, Lezd;->a()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Leuo;->a:Ljava/util/List;

    .line 446
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezd;

    invoke-virtual {v4}, Lezd;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 447
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 444
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_5
    sub-int v1, v3, v2

    .line 452
    .local v1, "numConnected":I
    goto :goto_0

    .line 435
    .end local v0    # "i":I
    .end local v1    # "numConnected":I
    .end local v2    # "numDisConnected":I
    .end local v3    # "totalNumber":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized a(J)I
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 153
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 154
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 155
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 156
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 157
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 153
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v2, v3, :cond_2

    .line 164
    .end local v2    # "pos":I
    :goto_1
    monitor-exit p0

    return v2

    .restart local v2    # "pos":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized a(Ljava/lang/Long;)I
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 137
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 138
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 139
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 140
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 141
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 137
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 146
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezd;

    invoke-virtual {v3}, Lezd;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 148
    :goto_1
    monitor-exit p0

    return v3

    :cond_2
    const/16 v3, 0x10

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized a(IIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "status"    # I
    .param p3, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 272
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt p1, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 276
    .local v0, "avatar":Lezd;
    if-eqz v0, :cond_2

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set AvatarStatus,  nickName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, p2}, Lezd;->a(I)V

    .line 280
    :cond_2
    if-eqz p3, :cond_0

    .line 281
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    .end local v0    # "avatar":Lezd;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(JZ)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "isNofity"    # Z

    .prologue
    .line 120
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 121
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 122
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 123
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 124
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 120
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 129
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    if-eqz p3, :cond_2

    .line 131
    invoke-virtual {p0}, Leuo;->e()V

    .line 133
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(JZZ)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "mute"    # Z
    .param p4, "isNotify"    # Z

    .prologue
    .line 170
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 171
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 172
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 173
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 174
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 170
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 179
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezd;

    invoke-virtual {v3, p3}, Lezd;->a(Z)V

    .line 180
    if-eqz p4, :cond_2

    .line 181
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_2
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V
    .locals 4
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "isNofity"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Leuo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Leuo;->a(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "isNotify"    # Z
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 35
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_1
    :try_start_1
    new-instance v0, Lezd;

    invoke-direct {v0}, Lezd;-><init>()V

    .line 38
    .local v0, "avatar":Lezd;
    iput-object p1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 39
    invoke-virtual {v0, p3}, Lezd;->a(I)V

    .line 40
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addMember,  nickName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "avatar":Lezd;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/Long;IZ)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "status"    # I
    .param p3, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_1
    const v1, 0x7fffffff

    .line 338
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 340
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 342
    move v1, v0

    .line 348
    :cond_2
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set AvatarStatus,  nickName "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    invoke-virtual {v2, p2}, Lezd;->a(I)V

    .line 351
    if-eqz p3, :cond_0

    .line 353
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 338
    .restart local v0    # "i":I
    .restart local v1    # "pos":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Leuo;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addTail, needNotify = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    new-instance v0, Lezd;

    invoke-direct {v0}, Lezd;-><init>()V

    .line 54
    .local v0, "avatar":Lezd;
    const/4 v1, 0x0

    iput-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 55
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lezd;->a(I)V

    .line 56
    invoke-virtual {v0, p1}, Lezd;->a(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Leuo;->c:Z

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "avatar":Lezd;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/util/List;ZZI)V
    .locals 3
    .param p2, "isNeedClear"    # Z
    .param p3, "isNotify"    # Z
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;ZZI)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 89
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    new-instance v0, Lezd;

    invoke-direct {v0}, Lezd;-><init>()V

    .line 96
    .local v0, "avatar":Lezd;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 97
    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v2, :cond_3

    .line 98
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lezd;->a(I)V

    .line 102
    :goto_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0, p4}, Lezd;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    .end local v0    # "avatar":Lezd;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(Z)V
    .locals 2
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leuo;->c:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeTail, needNotify = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Leuo;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Leuo;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZI)V
    .locals 3
    .param p1, "isNotify"    # Z
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 316
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 317
    .local v0, "avatar":Lezd;
    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_2

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lezd;->a(I)V

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "avatar":Lezd;
    :cond_3
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(ZJZ)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "expUid"    # J
    .param p4, "isNotify"    # Z

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2

    .line 221
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v2}, Leuo;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 223
    :cond_2
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1
    :try_start_2
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 224
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 225
    .local v0, "avatar":Lezd;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 226
    iget-object v2, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v0, p1}, Lezd;->a(Z)V

    .line 223
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "avatar":Lezd;
    :cond_4
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(ZZ)V
    .locals 3
    .param p1, "mute"    # Z
    .param p2, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 207
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 208
    .local v0, "avatar":Lezd;
    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0, p1}, Lezd;->a(Z)V

    .line 206
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "avatar":Lezd;
    :cond_3
    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v1    # "pos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized b(JZZ)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "speeking"    # Z
    .param p4, "isNotify"    # Z

    .prologue
    .line 254
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 255
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 256
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 257
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 258
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 254
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 263
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezd;

    invoke-virtual {v3, p3}, Lezd;->b(Z)V

    .line 265
    invoke-virtual {p0}, Leuo;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_2
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized b(Ljava/lang/Long;IZ)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "status"    # I
    .param p3, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 363
    :cond_1
    const v1, 0x7fffffff

    .line 364
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 366
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 367
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 368
    move v1, v0

    .line 374
    :cond_2
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set AvatarStatus,  nickName "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", extra status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    invoke-virtual {v2, p2}, Lezd;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 364
    .restart local v0    # "i":I
    .restart local v1    # "pos":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized b(J)Z
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 187
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 188
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezd;

    .line 189
    .local v0, "avatar":Lezd;
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    .line 190
    iget-object v1, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 191
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 187
    .end local v1    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "avatar":Lezd;
    :cond_1
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 196
    iget-object v3, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezd;

    invoke-virtual {v3}, Lezd;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 198
    :goto_1
    monitor-exit p0

    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized c(J)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v3, 0x0

    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 301
    :goto_0
    monitor-exit p0

    return-object v2

    .line 288
    :cond_1
    const v1, 0x7fffffff

    .line 290
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_3

    .line 293
    move v1, v0

    .line 298
    :cond_2
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 299
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 301
    goto :goto_0

    .line 285
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 473
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 474
    :cond_0
    const/4 v1, 0x0

    .line 482
    :cond_1
    return-object v1

    .line 476
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 478
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 479
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized d(J)Z
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v2, 0x0

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 469
    :goto_0
    monitor-exit p0

    return v1

    .line 461
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 462
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 464
    const/4 v1, 0x1

    goto :goto_0

    .line 461
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 469
    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final e(J)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 486
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 499
    :cond_1
    :goto_0
    return-object v0

    .line 489
    :cond_2
    const/4 v0, 0x0

    .line 490
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Leuo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lezd;

    .line 491
    .local v1, "userAvatar":Lezd;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_3

    .line 494
    iget-object v3, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 495
    iget-object v0, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 496
    goto :goto_0
.end method

.method public abstract e()V
.end method
