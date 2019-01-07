.class public final Lefu;
.super Lifh;
.source "OAMicroAppCommandListener.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "oa_app"

    invoke-direct {p0, v0}, Lifh;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lifg;)V
    .locals 14
    .param p1, "command"    # Lifg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 34
    if-eqz p1, :cond_0

    iget-object v4, p1, Lifg;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lifg;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string/jumbo v4, "oa_app"

    iget-object v5, p1, Lifg;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OAMicroAppCommandListener"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "onReceived name="

    aput-object v7, v6, v10

    iget-object v7, p1, Lifg;->a:Ljava/lang/String;

    aput-object v7, v6, v11

    const-string/jumbo v7, ", param="

    aput-object v7, v6, v12

    iget-object v7, p1, Lifg;->b:Ljava/lang/String;

    aput-object v7, v6, v13

    const-string/jumbo v7, ", print start."

    aput-object v7, v6, v8

    .line 43
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v4, p1, Lifg;->b:Ljava/lang/String;

    .line 1109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 46
    .local v2, "orgId":J
    invoke-static {}, Leel;->f()Leek;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 47
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    :cond_2
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OAMicroAppCommandListener"

    const-string/jumbo v6, "orgMicroAPPObject or orgMicroAPPObject.microAPPList is null "

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OAMicroAppCommandListener"

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "orgId="

    aput-object v7, v6, v10

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, ", microAppList size="

    aput-object v7, v6, v12

    iget-object v7, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 54
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_4

    .line 58
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "OAMicroAppCommandListener"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "microAPPObject appId="

    aput-object v8, v7, v10

    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    .end local v0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_5
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OAMicroAppCommandListener"

    const-string/jumbo v6, "onReceived print end."

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
