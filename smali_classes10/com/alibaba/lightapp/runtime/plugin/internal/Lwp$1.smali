.class Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;
.super Ljava/lang/Object;
.source "Lwp.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->getSuiteList(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;

    .line 143
    .local v3, "tryOutModel":Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    invoke-static {v5, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v3    # "tryOutModel":Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 162
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;->val$callbackId:Ljava/lang/String;

    .line 161
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 157
    return-void
.end method
