.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openChat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqu",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$4500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2287
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2262
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2265
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 2266
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "receive no data"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    :goto_0
    return-void

    .line 2270
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2272
    .local v0, "u":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    .line 2273
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2276
    .end local v0    # "u":J
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2277
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "no valid user"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2281
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$4400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
