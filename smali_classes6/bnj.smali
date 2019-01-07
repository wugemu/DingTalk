.class public final Lbnj;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnj$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
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
            "Lbnj$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lbnj;->c:Ljava/util/Map;

    .line 57
    new-instance v0, Lbnj$1;

    invoke-direct {v0, p0}, Lbnj$1;-><init>(Lbnj;)V

    iput-object v0, p0, Lbnj;->d:Landroid/content/BroadcastReceiver;

    .line 1270
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_0

    .line 1272
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 72
    :goto_0
    iput-wide v0, p0, Lbnj;->b:J

    .line 74
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbnj;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.org_other_employee_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    return-void

    .line 1274
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)J
    .locals 8
    .param p0, "orgInfoStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "mainOrgId"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 370
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-wide v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
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

    .line 3076
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lbqh;->a(ZLjava/lang/String;)V

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
            "Lbnj$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lbnj$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "diffOrgUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lbnj$a;>;"
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

    .line 310
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 314
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lbnw;->d(J)Lbnj$a;

    move-result-object v0

    .line 315
    .local v0, "info":Lbnj$a;
    new-instance v1, Lbnj$a;

    invoke-direct {v1, v2}, Lbnj$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 317
    .local v1, "newInfo":Lbnj$a;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lbnj$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 318
    :cond_1
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7, v1}, Lbnw;->a(JLbnj$a;)V

    .line 321
    :cond_2
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    .end local v0    # "info":Lbnj$a;
    .end local v1    # "newInfo":Lbnj$a;
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    return-object p1
.end method

.method static synthetic a(Lbnj;Ljava/util/List;Ljava/util/List;Lcov;)V
    .locals 2
    .param p0, "x0"    # Lbnj;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcov;

    .prologue
    .line 47
    .line 3287
    iget-object v0, p0, Lbnj;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3288
    iget-object v0, p0, Lbnj;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lbnj;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3289
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 3291
    iget-object v0, p0, Lbnj;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3292
    iget-object v0, p0, Lbnj;->c:Ljava/util/Map;

    invoke-static {p2, v0}, Lbnj;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3293
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3295
    if-eqz p3, :cond_0

    .line 3296
    invoke-interface {p3, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 47
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
            "Lbnj$a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lbnj$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "sameOrgUsers":Ljava/util/List;, "Ljava/util/List<Lcgc;>;"
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lbnj$a;>;"
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

    .line 339
    .local v1, "model":Lcgc;
    if-eqz v1, :cond_0

    .line 343
    iget-object v4, v1, Lcgc;->b:Lcet;

    if-eqz v4, :cond_0

    .line 347
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v4

    iget-object v5, v1, Lcgc;->b:Lcet;

    iget-object v5, v5, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lbnw;->d(J)Lbnj$a;

    move-result-object v0

    .line 348
    .local v0, "info":Lbnj$a;
    new-instance v2, Lbnj$a;

    invoke-direct {v2, v1}, Lbnj$a;-><init>(Lcgc;)V

    .line 350
    .local v2, "newInfo":Lbnj$a;
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lbnj$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 351
    :cond_1
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v4

    iget-object v5, v1, Lcgc;->b:Lcet;

    iget-object v5, v5, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2}, Lbnw;->a(JLbnj$a;)V

    .line 354
    :cond_2
    iget-object v4, v1, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    .end local v0    # "info":Lbnj$a;
    .end local v1    # "model":Lcgc;
    .end local v2    # "newInfo":Lbnj$a;
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
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;",
            "Lcov",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lbnj$a;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 153
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    .local p2, "listener":Lcov;, "Lcov<Ljava/util/Map<Ljava/lang/Long;Lbnj$a;>;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "posts is empty"

    .line 2076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lbnj;->a:Ljava/util/List;

    .line 161
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 2184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2187
    if-eqz v0, :cond_1

    .line 2191
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 2192
    if-eqz v0, :cond_1

    .line 2196
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_2
    new-instance v0, Lbnj$2;

    invoke-direct {v0, p0, p2}, Lbnj$2;-><init>(Lbnj;Lcov;)V

    invoke-virtual {v1, v2, v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method
