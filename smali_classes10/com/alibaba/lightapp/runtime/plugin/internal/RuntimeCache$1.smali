.class Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;
.super Ljava/lang/Object;
.source "RuntimeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->save(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$bizType:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$corpId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$data:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;-><init>()V

    .line 90
    .local v0, "object":Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$host:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$bizType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$corpId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$data:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mData:Ljava/lang/String;

    .line 94
    invoke-static {}, Lhrm;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mExpireTime:J

    .line 96
    invoke-static {}, Lhfp;->a()Lhfp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhfp;->a(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)J

    move-result-wide v2

    .line 97
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a()Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$host:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$bizType:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$corpId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1026
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a:Ljava/util/Map;

    sget-object v5, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->RUNNING:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v4, "RuntimeCache"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "RuntimeCache save data err, bizType:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$bizType:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x3

    const-string/jumbo v7, "save data err"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method
