.class Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;
.super Ljava/lang/Object;
.source "RuntimeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->doRestoreData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

.field final synthetic val$extData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->val$extData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 176
    invoke-static {}, Lhfp;->a()Lhfp;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhfp;->b(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v4

    .line 177
    .local v4, "object":Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;
    if-eqz v4, :cond_2

    .line 179
    invoke-static {}, Lhfp;->a()Lhfp;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhfp;->c(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)I

    .line 180
    iget-wide v6, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mExpireTime:J

    invoke-static {}, Lhrm;->a()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 181
    .local v2, "interval":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    const-wide/32 v6, 0x493e0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 182
    :cond_0
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "RuntimeCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "RuntimeCache restore data expire "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mExpireTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x300d

    const-string/jumbo v9, "restore data expire"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 203
    .end local v2    # "interval":J
    :goto_0
    return-void

    .line 187
    .restart local v2    # "interval":J
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "bizType"

    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v5, "corpId"

    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v5, "data"

    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mData:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v5, "extData"

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->val$extData:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "RuntimeCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "RuntimeCache save data err "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v8, "restore data err"

    invoke-static {v10, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "interval":J
    :cond_2
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "RuntimeCache"

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "RuntimeCache restore data not exist, bizType:"

    aput-object v9, v8, v5

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .line 200
    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    aput-object v5, v8, v9

    const/4 v5, 0x2

    const-string/jumbo v9, " "

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    .line 199
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x300c

    const-string/jumbo v9, "restore data not exist"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    goto :goto_1
.end method
