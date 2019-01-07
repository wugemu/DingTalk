.class final Lexl$3;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

.field final synthetic b:Lexl;


# direct methods
.method constructor <init>(Lexl;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 227
    iput-object p1, p0, Lexl$3;->b:Lexl;

    iput-object p2, p0, Lexl$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 227
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;

    .line 1230
    if-nez p1, :cond_1

    .line 1231
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v0, v1, v6, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->conferenceId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 1238
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Levn;->b(J)V

    .line 1240
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->hangupUidMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->hangupUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1241
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1242
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->hangupUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1243
    if-eqz v0, :cond_2

    .line 1246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1248
    invoke-static {v0, v6}, Lezd;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1252
    :cond_3
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1253
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/util/Map;)V

    .line 1258
    :cond_4
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->g(Lexl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1259
    :try_start_0
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->h(Lexl;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->conferenceId:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 1260
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Make voip conf to "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lexl$3;->b:Lexl;

    .line 1261
    invoke-static {v7}, Lexl;->i(Lexl;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1260
    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->a(Lexl;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leyx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1263
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1264
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->e()V

    .line 1266
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    .line 1298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1268
    :cond_6
    :try_start_1
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->b()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1269
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid conf state"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    monitor-exit v1

    goto/16 :goto_0

    .line 1273
    :cond_7
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->d(Lexl;)Liee;

    move-result-object v0

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lexl$3;->b:Lexl;

    invoke-static {v5}, Lexl;->i(Lexl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Liee;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->d(Lexl;)Liee;

    move-result-object v0

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    invoke-interface {v0, v4}, Liee;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V

    .line 1275
    new-instance v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;-><init>()V

    .line 1276
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;->conferenceId:Ljava/lang/Long;

    iput-object v4, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    .line 1277
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    .line 1278
    iget-object v4, p0, Lexl$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;

    .line 1279
    iget-object v4, p0, Lexl$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lexl$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    .line 1281
    iget-object v4, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    iget-object v5, p0, Lexl$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1283
    :cond_8
    iget-object v4, p0, Lexl$3;->b:Lexl;

    invoke-static {v4}, Lexl;->d(Lexl;)Liee;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->toJsonStr()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Liee;->c(Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Make call really"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->d(Lexl;)Liee;

    move-result-object v0

    iget-object v4, p0, Lexl$3;->b:Lexl;

    invoke-static {v4}, Lexl;->i(Lexl;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Liee;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1286
    if-eqz v0, :cond_9

    move v0, v2

    .line 1297
    :goto_2
    iget-object v2, p0, Lexl$3;->b:Lexl;

    invoke-static {v2}, Lexl;->d(Lexl;)Liee;

    move-result-object v2

    invoke-interface {v2}, Liee;->h()V

    .line 1298
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    iget-object v1, p0, Lexl$3;->b:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1300
    if-eqz v0, :cond_b

    .line 1301
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexl$3;->b:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1289
    :cond_9
    :try_start_2
    iget-object v0, p0, Lexl$3;->b:Lexl;

    iget-object v2, p0, Lexl$3;->b:Lexl;

    invoke-static {v2}, Lexl;->d(Lexl;)Liee;

    move-result-object v2

    iget-object v4, p0, Lexl$3;->b:Lexl;

    invoke-static {v4}, Lexl;->i(Lexl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    invoke-static {v0, v2}, Lexl;->a(Lexl;Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 1291
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Make call end"

    invoke-static {v0, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    .line 1293
    goto :goto_2

    :cond_a
    move v0, v2

    .line 1294
    goto :goto_2

    .line 1303
    :cond_b
    iget-object v0, p0, Lexl$3;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v2, -0x2

    const-string/jumbo v3, "Make call fail"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 310
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Create voip conf "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 311
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, "errCode":I
    iget-object v1, p0, Lexl$3;->b:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lexl$3;->b:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v1, v2, v0, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method
