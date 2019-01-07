.class public final Lfbz;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfbz$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lfbz;->c:Ljava/util/Map;

    .line 58
    new-instance v0, Lfbz$1;

    invoke-direct {v0, p0}, Lfbz$1;-><init>(Lfbz;)V

    iput-object v0, p0, Lfbz;->d:Landroid/content/BroadcastReceiver;

    .line 1283
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1284
    if-eqz v0, :cond_0

    .line 1285
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 73
    :goto_0
    iput-wide v0, p0, Lfbz;->b:J

    .line 75
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfbz;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.org_other_employee_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 76
    return-void

    .line 1287
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)J
    .locals 8
    .param p0, "orgInfoStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 376
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "mainOrgId"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 383
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-wide v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "JSONException = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3060
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
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
            "Lfbz$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "diffOrgUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lfbz$a;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 323
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 327
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lfcn;->d(J)Lfbz$a;

    move-result-object v0

    .line 328
    .local v0, "info":Lfbz$a;
    new-instance v1, Lfbz$a;

    invoke-direct {v1, v2}, Lfbz$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 330
    .local v1, "newInfo":Lfbz$a;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lfbz$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 331
    :cond_1
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7, v1}, Lfcn;->a(JLfbz$a;)V

    .line 334
    :cond_2
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    .end local v0    # "info":Lfbz$a;
    .end local v1    # "newInfo":Lfbz$a;
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    return-object p1
.end method

.method static synthetic a(Lfbz;Ljava/util/List;Ljava/util/List;Lcov;)V
    .locals 2
    .param p0, "x0"    # Lfbz;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcov;

    .prologue
    .line 48
    .line 3300
    iget-object v0, p0, Lfbz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3301
    iget-object v0, p0, Lfbz;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lfbz;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3302
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 3304
    iget-object v0, p0, Lfbz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3305
    iget-object v0, p0, Lfbz;->c:Ljava/util/Map;

    invoke-static {p2, v0}, Lfbz;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3306
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3308
    if-eqz p3, :cond_0

    .line 3309
    invoke-interface {p3, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void
.end method

.method static b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "sameOrgUsers":Ljava/util/List;, "Ljava/util/List<Lcgc;>;"
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lfbz$a;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgc;

    .line 352
    .local v1, "model":Lcgc;
    if-eqz v1, :cond_0

    .line 356
    iget-object v4, v1, Lcgc;->b:Lcet;

    if-eqz v4, :cond_0

    .line 360
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v4

    iget-object v5, v1, Lcgc;->b:Lcet;

    iget-object v5, v5, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfcn;->d(J)Lfbz$a;

    move-result-object v0

    .line 361
    .local v0, "info":Lfbz$a;
    new-instance v2, Lfbz$a;

    invoke-direct {v2, v1}, Lfbz$a;-><init>(Lcgc;)V

    .line 363
    .local v2, "newInfo":Lfbz$a;
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lfbz$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 364
    :cond_1
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v4

    iget-object v5, v1, Lcgc;->b:Lcet;

    iget-object v5, v5, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2}, Lfcn;->a(JLfbz$a;)V

    .line 367
    :cond_2
    iget-object v4, v1, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    .end local v0    # "info":Lfbz$a;
    .end local v1    # "model":Lcgc;
    .end local v2    # "newInfo":Lfbz$a;
    :cond_3
    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;Lcov;Z)V
    .locals 6
    .param p2    # Lcov;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;",
            "Lcov",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 161
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    .local p2, "listener":Lcov;, "Lcov<Ljava/util/Map<Ljava/lang/Long;Lfbz$a;>;>;"
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "posts is empty"

    .line 2060
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lfbz;->a:Ljava/util/List;

    .line 169
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 2195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 2198
    if-eqz v0, :cond_1

    .line 2202
    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 2203
    if-eqz v0, :cond_1

    .line 2207
    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_2
    new-instance v0, Lfbz$2;

    invoke-direct {v0, p0, p2}, Lfbz$2;-><init>(Lfbz;Lcov;)V

    invoke-virtual {v1, v2, v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method
