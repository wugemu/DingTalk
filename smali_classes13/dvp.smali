.class public final Ldvp;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Ldvt;


# instance fields
.field a:Ldvy;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:J

.field f:J

.field g:Z

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

.field private j:Landroid/app/Activity;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ldvy;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Ldvy;
    .param p3, "type"    # Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide v0, p0, Ldvp;->l:J

    .line 78
    iput-wide v0, p0, Ldvp;->f:J

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvp;->g:Z

    .line 86
    iput-object p1, p0, Ldvp;->j:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Ldvp;->a:Ldvy;

    .line 88
    iput-object p3, p0, Ldvp;->i:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .line 89
    return-void
.end method

.method static synthetic a(Ldvp;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Ldvp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    .line 5251
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 5253
    if-eqz v0, :cond_0

    .line 5254
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->createAt:J

    iput-wide v0, p0, Ldvp;->l:J

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic b(Ldvp;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Ldvp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    .line 6242
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 6244
    if-eqz v0, :cond_0

    .line 6245
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    iput-wide v0, p0, Ldvp;->f:J

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Ldvp;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 107
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    new-instance v0, Ldvp$1;

    invoke-direct {v0, p0}, Ldvp$1;-><init>(Ldvp;)V

    const-class v2, Lcma;

    iget-object v3, p0, Ldvp;->j:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1060
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1061
    const-string/jumbo v1, ""

    const-string/jumbo v2, "openid is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_0
    return-void

    .line 1064
    :cond_0
    new-instance v2, Ldyi$1;

    invoke-direct {v2, v1, v0}, Ldyi$1;-><init>(Ldyi;Lcma;)V

    .line 1070
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 1071
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->listNewest(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 1
    .param p1, "workItemObject"    # Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .prologue
    .line 354
    iget-object v0, p0, Ldvp;->a:Ldvy;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Ldvp;->a:Ldvy;

    invoke-interface {v0, p1}, Ldvy;->a(Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    .line 357
    :cond_0
    return-void
.end method

.method public final a(Ldsk;)V
    .locals 11
    .param p1, "businessItemModel"    # Ldsk;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 336
    if-eqz p1, :cond_2

    iget-object v3, p0, Ldvp;->c:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldvp;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "exist":Z
    iget-object v3, p0, Ldvp;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 339
    .local v2, "itemObject":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->id:J

    iget-object v6, p1, Ldsk;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 339
    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 340
    const/4 v1, 0x1

    .line 344
    .end local v2    # "itemObject":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Ldvp;->a:Ldvy;

    if-eqz v3, :cond_2

    .line 345
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;-><init>()V

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->fromIdlModel(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    move-result-object v0

    .line 346
    .local v0, "businessItemObject":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    iget-object v3, p0, Ldvp;->c:Ljava/util/List;

    invoke-interface {v3, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    iget-object v3, p0, Ldvp;->a:Ldvy;

    invoke-interface {v3, v10, v0}, Ldvy;->a(ILcom/alibaba/android/dingtalkim/models/BusinessItemObject;)V

    .line 350
    .end local v0    # "businessItemObject":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    .end local v1    # "exist":Z
    :cond_2
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 13
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Ldvp;->a:Ldvy;

    if-nez v0, :cond_0

    move v0, v2

    .line 424
    :goto_0
    return v0

    .line 4371
    :cond_0
    if-eqz p1, :cond_5

    .line 4374
    invoke-static {p1}, Ldwa;->c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    .line 4375
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 4376
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4378
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v8

    .line 4379
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 4381
    if-eqz v0, :cond_1

    .line 4384
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->o()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v10, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v10, v10, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-eq v1, v10, :cond_1

    .line 4389
    :cond_2
    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v10, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v10, v10, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v1, v10, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_3

    .line 4393
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    invoke-virtual {v10}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    invoke-static {v1, v10, v11}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4398
    :goto_2
    if-eqz v1, :cond_3

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_3

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->did:Ljava/lang/String;

    .line 4400
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 4399
    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4406
    :cond_3
    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->cid:Ljava/lang/String;

    .line 4407
    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4394
    :catch_0
    move-exception v1

    .line 4395
    const-string/jumbo v10, "dt_live"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "updateFloatWindow fromJson failed, error="

    aput-object v12, v11, v2

    .line 4396
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v3

    .line 4395
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    .line 4410
    :cond_4
    iput-object v6, p0, Ldvp;->k:Ljava/util/Map;

    .line 419
    :cond_5
    iget-object v0, p0, Ldvp;->k:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldvp;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 420
    iget-object v0, p0, Ldvp;->a:Ldvy;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ldvp;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ldvy;->a(Ljava/util/Map;)V

    move v0, v3

    .line 421
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 424
    goto/16 :goto_0
.end method

.method public final b()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-wide v2, p0, Ldvp;->e:J

    iget-wide v4, p0, Ldvp;->d:J

    iget-wide v6, p0, Ldvp;->l:J

    const/16 v8, 0x14

    new-instance v0, Ldvp$4;

    invoke-direct {v0, p0}, Ldvp$4;-><init>(Ldvp;)V

    const-class v9, Lcma;

    iget-object v10, p0, Ldvp;->j:Landroid/app/Activity;

    invoke-static {v0, v9, v10}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    invoke-virtual/range {v1 .. v9}, Ldyi;->a(JJJILcma;)V

    .line 294
    return-void
.end method

.method public final b(J)V
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    .line 156
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-wide v2, p0, Ldvp;->f:J

    new-instance v0, Ldvp$2;

    invoke-direct {v0, p0}, Ldvp$2;-><init>(Ldvp;)V

    const-class v4, Lcma;

    iget-object v5, p0, Ldvp;->j:Landroid/app/Activity;

    .line 157
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1161
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 1162
    const-string/jumbo v1, ""

    const-string/jumbo v2, "orgId is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :goto_0
    return-void

    .line 1165
    :cond_0
    new-instance v4, Ldyi$8;

    invoke-direct {v4, v1, v0}, Ldyi$8;-><init>(Ldyi;Lcma;)V

    .line 1171
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 1172
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->getOAConvOneboxV2(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-wide v6, p0, Ldvp;->e:J

    iget-object v2, p0, Ldvp;->h:Ljava/util/List;

    iget-wide v8, p0, Ldvp;->f:J

    new-instance v0, Ldvp$5;

    invoke-direct {v0, p0}, Ldvp$5;-><init>(Ldvp;)V

    const-class v3, Lcma;

    iget-object v4, p0, Ldvp;->j:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3115
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 3116
    const-string/jumbo v1, ""

    const-string/jumbo v2, "openid is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    :goto_0
    return-void

    .line 3119
    :cond_0
    new-instance v5, Ldyi$6;

    invoke-direct {v5, v1, v0}, Ldyi$6;-><init>(Ldyi;Lcma;)V

    .line 3132
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 3133
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->getWorkItemsBatch(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c(J)V
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    const/4 v1, 0x1

    .line 2113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v0, v1

    .line 2022
    :goto_0
    if-nez v0, :cond_1

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should be called in Main Thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_1
    iget-boolean v0, p0, Ldvp;->g:Z

    if-eqz v0, :cond_2

    .line 2140
    :goto_1
    return-void

    .line 201
    :cond_2
    iput-boolean v1, p0, Ldvp;->g:Z

    .line 203
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-wide v2, p0, Ldvp;->f:J

    new-instance v0, Ldvp$3;

    invoke-direct {v0, p0}, Ldvp$3;-><init>(Ldvp;)V

    const-class v4, Lcma;

    iget-object v5, p0, Ldvp;->j:Landroid/app/Activity;

    .line 204
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2138
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 2139
    const-string/jumbo v1, ""

    const-string/jumbo v2, "openid is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2142
    :cond_3
    new-instance v4, Ldyi$7;

    invoke-direct {v4, v1, v0}, Ldyi$7;-><init>(Ldyi;Lcma;)V

    .line 2155
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 2156
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->getAllWorkItemsV2(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_1
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Ldvp;->k:Ljava/util/Map;

    return-object v0
.end method
