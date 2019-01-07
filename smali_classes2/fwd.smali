.class public final Lfwd;
.super Ljava/lang/Object;
.source "UserDataSourceImpl.java"

# interfaces
.implements Lfwc;


# static fields
.field private static a:Lfwd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfwc;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lfwd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfwd;->a:Lfwd;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lfwd;

    invoke-direct {v0}, Lfwd;-><init>()V

    sput-object v0, Lfwd;->a:Lfwd;

    .line 30
    :cond_0
    sget-object v0, Lfwd;->a:Lfwd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .local v2, "orgId":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 37
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    :cond_0
    const-wide/16 v4, 0x0

    .line 49
    .end local v1    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_0
    return-wide v4

    .line 42
    .restart local v1    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 43
    .local v0, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .end local v0    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v1    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    move-wide v4, v2

    .line 49
    goto :goto_0
.end method

.method public final a(JLjava/util/List;Lcma;)V
    .locals 5
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
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 177
    if-eqz p4, :cond_0

    .line 178
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "no matched org id"

    invoke-interface {p4, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 184
    .local v0, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    new-instance v2, Lfwd$3;

    invoke-direct {v2, p0, v0, p4}, Lfwd$3;-><init>(Lfwd;Ljava/util/List;Lcma;)V

    invoke-interface {v1, p1, p2, p3, v2}, Lezt;->a(JLjava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 54
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "invalid params"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, p1}, Lfwd;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    .local v0, "orgId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 61
    const-string/jumbo v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no matched orgId for corpId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    new-instance v3, Lfwd$1;

    invoke-direct {v3, p0, p3, p1, p2}, Lfwd$1;-><init>(Lfwd;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2, v0, v1, v3}, Lfac;->a(Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 99
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "invalid params"

    invoke-interface {p3, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v3

    invoke-interface {v3, p1}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    .local v0, "orgId":J
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 105
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    new-instance v4, Lfwd$2;

    invoke-direct {v4, p0, v2, p3}, Lfwd$2;-><init>(Lfwd;Ljava/util/List;Lcma;)V

    invoke-interface {v3, v0, v1, p2, v4}, Lezt;->a(JLjava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;Z)V
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p4, "expireLimitCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 222
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 224
    const-string/jumbo v1, "0"

    const-string/jumbo v4, "invalid params"

    invoke-interface {p3, v1, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v1

    invoke-interface {v1, p1}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 231
    .local v2, "orgId":J
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    new-instance v5, Lfwd$4;

    invoke-direct {v5, p0, v0, p3}, Lfwd$4;-><init>(Lfwd;Ljava/util/HashMap;Lcma;)V

    move-object v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lezt;->a(JLjava/util/List;Lcma;Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 261
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 263
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "invalid params"

    invoke-interface {p3, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v2, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v3

    invoke-interface {v3, p1}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 270
    .local v0, "orgId":J
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    new-instance v4, Lfwd$5;

    invoke-direct {v4, p0, v2, p2, p3}, Lfwd$5;-><init>(Lfwd;Ljava/util/HashMap;Ljava/util/List;Lcma;)V

    invoke-interface {v3, v0, v1, p2, v4}, Lezt;->a(JLjava/util/List;Lcma;)V

    goto :goto_0
.end method
