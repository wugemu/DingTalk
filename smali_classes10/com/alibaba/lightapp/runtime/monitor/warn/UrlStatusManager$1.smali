.class Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;
.super Ljava/lang/Object;
.source "UrlStatusManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->checkUrlStatus(Ljava/lang/String;Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;)V
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
        "Lhkg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

.field final synthetic val$absolutePath:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->val$absolutePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->val$callback:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lhkg;)V
    .locals 4
    .param p1, "urlStatusModel"    # Lhkg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->access$000(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Lhkg;)Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    move-result-object v0

    .line 65
    .local v0, "status":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->urlToStatus:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->val$absolutePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    invoke-static {v3, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->access$000(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Lhkg;)Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->val$callback:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;->onSuccess(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lhkg;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->onDataReceived(Lhkg;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;->val$callback:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;->onError(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 75
    return-void
.end method
