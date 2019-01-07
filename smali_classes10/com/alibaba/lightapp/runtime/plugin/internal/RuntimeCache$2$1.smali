.class Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;
.super Ljava/lang/Object;
.source "RuntimeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "RuntimeCache"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RuntimeCache restore timeout, bizType:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->val$bizType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lhfp;->a()Lhfp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhfp;->c(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)I

    .line 150
    invoke-static {}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a()Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method
