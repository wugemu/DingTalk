.class public final Lhmm$2;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"

# interfaces
.implements Lhmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmg;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhmm;


# direct methods
.method public constructor <init>(Lhmm;Lhmg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhmm;

    .prologue
    .line 77
    iput-object p1, p0, Lhmm$2;->d:Lhmm;

    iput-object p2, p0, Lhmm$2;->a:Lhmg;

    iput-object p3, p0, Lhmm$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lhmm$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    const/4 v8, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    invoke-interface {v3, v8}, Lhmg;->a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    .line 87
    .local v0, "found":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    .line 88
    .local v1, "item":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    if-eqz v1, :cond_2

    iget-object v4, p0, Lhmm$2;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    iget-object v5, p0, Lhmm$2;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 90
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_2

    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v4, v4, Lhoh;->a:Ljava/lang/Long;

    if-eqz v4, :cond_2

    iget-wide v4, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iget-object v6, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v6, v6, Lhoh;->a:Ljava/lang/Long;

    .line 93
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 94
    const/4 v0, 0x1

    .line 95
    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    if-eqz v3, :cond_3

    .line 96
    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    invoke-interface {v3, v1}, Lhmg;->a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V

    .line 103
    .end local v1    # "item":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    if-nez v0, :cond_0

    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lhmm$2;->a:Lhmg;

    invoke-interface {v3, v8}, Lhmg;->a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V

    goto :goto_0
.end method
