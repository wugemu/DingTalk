.class Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;
.super Ljava/lang/Object;
.source "SyncMinCreateTimeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->saveMinCreateTime(Lcom/alibaba/wukong/auth/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

.field final synthetic val$pushPackageModel:Lcom/alibaba/wukong/auth/ag;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;Lcom/alibaba/wukong/auth/ag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;->this$0:Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;->val$pushPackageModel:Lcom/alibaba/wukong/auth/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 65
    .local v2, "openId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pref_min_create_time_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Liga;->a()Liga;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;->val$pushPackageModel:Lcom/alibaba/wukong/auth/ag;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/ag;->aE:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Liga;->a(Ljava/lang/String;J)V

    .line 68
    const-string/jumbo v1, "SyncMin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync save minCreateTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager$1;->val$pushPackageModel:Lcom/alibaba/wukong/auth/ag;

    iget-object v5, v5, Lcom/alibaba/wukong/auth/ag;->aE:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v1, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
