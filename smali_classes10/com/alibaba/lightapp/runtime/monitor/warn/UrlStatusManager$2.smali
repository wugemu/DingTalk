.class Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;
.super Lcmi;
.source "UrlStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getAppMalfunctionConfig(Lcmi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

.field final synthetic val$callback:Lcmi;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->val$callback:Lcmi;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    :try_start_0
    const-string/jumbo v0, "RUNTIME_APP_ERROR_INFO_KEY"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->val$callback:Lcmi;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->val$callback:Lcmi;

    invoke-virtual {v0, p1, p2, p3}, Lcmi;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    const-string/jumbo v1, "RuntimeConfig"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "UrlStatusManager"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "parse excetion data occurs exception: "

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    .line 124
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v5

    .line 123
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public onLoadSuccess(Lhil;)V
    .locals 8
    .param p1, "appMalfunctionConfigModel"    # Lhil;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    if-eqz p1, :cond_1

    .line 99
    :try_start_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;)V

    .line 101
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 99
    invoke-static {p1, v2}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "appMalfunctionConfigStr":Ljava/lang/String;
    const-string/jumbo v2, "RUNTIME_APP_ERROR_INFO_KEY"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "appMalfunctionConfigStr":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->val$callback:Lcmi;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->val$callback:Lcmi;

    invoke-virtual {v2, p1}, Lcmi;->onLoadSuccess(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void

    .line 104
    :cond_1
    :try_start_1
    const-string/jumbo v2, "RUNTIME_APP_ERROR_INFO_KEY"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "RuntimeConfig"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "UrlStatusManager"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "parse success data occurs exception: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 108
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Lhil;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;->onLoadSuccess(Lhil;)V

    return-void
.end method
