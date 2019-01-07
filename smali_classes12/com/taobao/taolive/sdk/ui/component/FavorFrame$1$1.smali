.class Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;
.super Ljava/lang/Object;
.source "FavorFrame.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

.field final synthetic val$onceCount:I


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->this$1:Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

    iput p2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->val$onceCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getLiveDetail failed, errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->this$1:Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

    iget-object v0, v0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->this$1:Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

    iget-object v1, v1, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$100(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)I

    move-result v1

    iget v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->val$onceCount:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$102(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;I)I

    .line 98
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 103
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, "Live_GroupLike"

    iget v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;->val$onceCount:I

    .line 1056
    :try_start_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->j()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v4

    .line 2043
    iget-object v4, v4, Lbwr;->c:Ljava/lang/String;

    .line 1059
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v5

    invoke-virtual {v5}, Lbwr;->b()Ljava/lang/String;

    move-result-object v5

    .line 1061
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1062
    const-string/jumbo v7, "userId"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v2, "cid"

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string/jumbo v2, "orgId"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string/jumbo v2, "liveUuid"

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string/jumbo v2, "digCount"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-static {v0, v6}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
