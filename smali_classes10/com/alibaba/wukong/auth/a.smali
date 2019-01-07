.class public Lcom/alibaba/wukong/auth/a;
.super Ljava/lang/Object;
.source "AnalyticsRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/wukong/idl/log/models/AlarmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/log/models/AlarmModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-nez p1, :cond_1

    .line 19
    if-eqz p2, :cond_0

    .line 20
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002 model is null"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/auth/a$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/wukong/auth/a$1;-><init>(Lcom/alibaba/wukong/auth/a;Lcom/alibaba/wukong/Callback;)V

    .line 30
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v1, "[TAG] Rpc analytics"

    const-string/jumbo v2, "[RPC] Analytics alarm"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "base"

    invoke-static {v1, v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-class v1, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;->alarm(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Liyv;)V

    goto :goto_0
.end method
