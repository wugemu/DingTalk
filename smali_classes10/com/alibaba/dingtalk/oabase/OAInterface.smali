.class public abstract Lcom/alibaba/dingtalk/oabase/OAInterface;
.super Lckb;
.source "OAInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static i()Lcom/alibaba/dingtalk/oabase/OAInterface;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/OAInterface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "scene"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    .locals 1
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "token"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "conversationTitle"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # J

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rawUrl"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .param p1, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JI)Ljava/util/List;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JLjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    .local p3, "agents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public a(JJLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(JLjava/util/List;Ljava/util/List;ZLcma;)V
    .locals 0
    .param p1, "agentId"    # J
    .param p5, "isHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p3, "deptVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "userVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "toUrl"    # Ljava/lang/String;
    .param p3, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p6, "corpId"    # Ljava/lang/String;

    .prologue
    .line 311
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "toUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intentFlag"    # I

    .prologue
    .line 318
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;>;"
    return-void
.end method

.method public a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V
    .locals 0
    .param p1, "shortcutObject"    # Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .prologue
    .line 717
    return-void
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 0
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "curPage"    # Ljava/lang/Integer;
    .param p3, "pageSize"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p4, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p5, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "display"    # Z

    .prologue
    .line 618
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "agentId"    # Ljava/lang/String;

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "senderId"    # J

    .prologue
    .line 568
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 758
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(J)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 369
    return-void
.end method

.method public c(Ljava/lang/String;J)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "agentId"    # J

    .prologue
    .line 578
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public c(J)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "senderId"    # J

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/util/List;
    .locals 1
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 509
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rawUrl"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 611
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "miniAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 638
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "miniAppId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "agentId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Ljava/lang/String;)I
    .locals 1
    .param p1, "miniAppIdV2"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/lang/String;)I
    .locals 1
    .param p1, "microAppId"    # Ljava/lang/String;

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public n(Ljava/lang/String;)I
    .locals 1
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 751
    const/4 v0, 0x0

    return-object v0
.end method
