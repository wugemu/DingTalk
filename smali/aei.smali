.class public final Laei;
.super Ljava/lang/Object;
.source "MailSubscribeDataSourceImpl.java"

# interfaces
.implements Laeg;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Laeg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/alimei/idl/service/CMailIService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Laei;->a:Ljava/util/List;

    .line 40
    iput-object v0, p0, Laei;->b:Ljava/util/List;

    .line 42
    iput-object v0, p0, Laei;->d:Ljava/util/List;

    .line 44
    iput-object v0, p0, Laei;->e:Ljava/util/List;

    .line 46
    iput-object v0, p0, Laei;->c:Lcma;

    .line 56
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    iput-object v0, p0, Laei;->f:Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 57
    return-void
.end method

.method static synthetic a(Laei;Laay;)V
    .locals 5
    .param p0, "x0"    # Laei;
    .param p1, "x1"    # Laay;

    .prologue
    .line 35
    .line 3238
    iget-object v0, p1, Laay;->c:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;->SUB_ACT_OFF:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    if-ne v0, v1, :cond_5

    .line 3239
    iget-object v0, p0, Laei;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 3240
    if-eqz v0, :cond_0

    iget-object v2, v0, Lzt;->a:Ljava/lang/Integer;

    iget-object v3, p1, Laay;->a:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    .line 3241
    iget-object v1, p0, Laei;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3245
    :cond_1
    iget-object v0, p0, Laei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 3246
    if-eqz v0, :cond_2

    iget-object v2, v0, Lzt;->a:Ljava/lang/Integer;

    iget-object v3, p1, Laay;->a:Ljava/lang/Integer;

    if-ne v2, v3, :cond_2

    .line 3247
    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_OFF:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    iput-object v1, v0, Lzt;->b:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    .line 3274
    :cond_3
    :goto_0
    iget-object v0, p0, Laei;->c:Lcma;

    if-eqz v0, :cond_4

    .line 3275
    iget-object v0, p0, Laei;->c:Lcma;

    invoke-interface {v0, p0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 35
    :cond_4
    return-void

    .line 3251
    :cond_5
    iget-object v0, p1, Laay;->c:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;->SUB_ACT_ON:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    if-ne v0, v1, :cond_3

    .line 3252
    const/4 v1, 0x0

    .line 3253
    iget-object v0, p0, Laei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 3254
    if-eqz v0, :cond_6

    iget-object v3, v0, Lzt;->a:Ljava/lang/Integer;

    iget-object v4, p1, Laay;->a:Ljava/lang/Integer;

    if-ne v3, v4, :cond_6

    .line 3256
    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    iput-object v1, v0, Lzt;->b:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    move-object v2, v0

    .line 3260
    :goto_1
    if-eqz v2, :cond_3

    .line 3261
    const/4 v1, 0x0

    .line 3262
    iget-object v0, p0, Laei;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 3263
    iget-object v0, v0, Lzt;->a:Ljava/lang/Integer;

    iget-object v4, v2, Lzt;->a:Ljava/lang/Integer;

    if-ne v0, v4, :cond_7

    .line 3264
    const/4 v0, 0x1

    .line 3268
    :goto_2
    if-nez v0, :cond_3

    .line 3269
    iget-object v0, p0, Laei;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 161
    iget-object v2, p0, Laei;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Laei;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 163
    .local v0, "item":Lzt;
    new-instance v1, Laay;

    invoke-direct {v1}, Laay;-><init>()V

    .line 164
    .local v1, "param":Laay;
    iget-object v3, v0, Lzt;->a:Ljava/lang/Integer;

    iput-object v3, v1, Laay;->a:Ljava/lang/Integer;

    .line 165
    sget-object v3, Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;->SUB_ACT_OFF:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    iput-object v3, v1, Laay;->c:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    .line 166
    iget-object v3, p0, Laei;->f:Lcom/alibaba/alimei/idl/service/CMailIService;

    new-instance v4, Laei$2;

    invoke-direct {v4, p0, v1}, Laei$2;-><init>(Laei;Laay;)V

    invoke-interface {v3, v1, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->submitMailSubscribe(Laay;Liyv;)V

    goto :goto_0

    .line 195
    .end local v0    # "item":Lzt;
    .end local v1    # "param":Laay;
    :cond_0
    iget-object v2, p0, Laei;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    :cond_1
    iget-object v2, p0, Laei;->d:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Laei;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 200
    .restart local v0    # "item":Lzt;
    new-instance v1, Laay;

    invoke-direct {v1}, Laay;-><init>()V

    .line 201
    .restart local v1    # "param":Laay;
    iget-object v3, v0, Lzt;->a:Ljava/lang/Integer;

    iput-object v3, v1, Laay;->a:Ljava/lang/Integer;

    .line 202
    sget-object v3, Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;->SUB_ACT_ON:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    iput-object v3, v1, Laay;->c:Lcom/alibaba/alimei/idl/model/SubscribeActionEnum;

    .line 203
    iget-object v3, p0, Laei;->f:Lcom/alibaba/alimei/idl/service/CMailIService;

    new-instance v4, Laei$3;

    invoke-direct {v4, p0, v1}, Laei$3;-><init>(Laei;Laay;)V

    invoke-interface {v3, v1, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->submitMailSubscribe(Laay;Liyv;)V

    goto :goto_1

    .line 232
    .end local v0    # "item":Lzt;
    .end local v1    # "param":Laay;
    :cond_2
    iget-object v2, p0, Laei;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 234
    :cond_3
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
            "Lzt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Laei;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Laeg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "callback":Lcma;, "Lcma<Laeg;>;"
    iput-object p1, p0, Laei;->c:Lcma;

    .line 72
    return-void
.end method

.method public final a(Lzt;)V
    .locals 2
    .param p1, "item"    # Lzt;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Laei;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laei;->d:Ljava/util/List;

    .line 127
    :cond_1
    iget-object v0, p1, Lzt;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2506
    const-string/jumbo v0, "mail_zhishixueyuanv2_Subscribe"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v0, p0, Laei;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Laei;->d()V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lzt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Laei;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(Lzt;)V
    .locals 2
    .param p1, "item"    # Lzt;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Laei;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laei;->e:Ljava/util/List;

    .line 148
    :cond_1
    iget-object v0, p1, Lzt;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2514
    const-string/jumbo v0, "mail_zhishixueyuanv2_UnsubscribeConfirm"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 152
    :cond_2
    iget-object v0, p0, Laei;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0}, Laei;->d()V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 76
    iget-object v5, p0, Laei;->f:Lcom/alibaba/alimei/idl/service/CMailIService;

    if-eqz v5, :cond_1

    .line 77
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 78
    .local v4, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    const-wide/16 v2, 0x0

    .line 79
    .local v2, "orgId":J
    if-eqz v4, :cond_0

    .line 80
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 81
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 82
    .local v0, "empInfo":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 86
    .end local v0    # "empInfo":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    new-instance v1, Laaq;

    invoke-direct {v1}, Laaq;-><init>()V

    .line 87
    .local v1, "param":Laaq;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Laaq;->a:Ljava/lang/Long;

    .line 89
    iget-object v5, p0, Laei;->f:Lcom/alibaba/alimei/idl/service/CMailIService;

    new-instance v6, Laei$1;

    invoke-direct {v6, p0}, Laei$1;-><init>(Laei;)V

    invoke-interface {v5, v1, v6}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryBusSubscribeStatusList(Laaq;Liyv;)V

    .line 105
    .end local v1    # "param":Laaq;
    .end local v2    # "orgId":J
    .end local v4    # "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    return-void
.end method
