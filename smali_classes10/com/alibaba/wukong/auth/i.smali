.class public Lcom/alibaba/wukong/auth/i;
.super Ljava/lang/Object;
.source "KickOutHandlerV2.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Receive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Receive",
        "<",
        "Lcom/laiwang/protocol/core/Request;",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field O:Lcom/alibaba/wukong/auth/g;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/auth/g;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/wukong/auth/i;->O:Lcom/alibaba/wukong/auth/g;

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 8
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v4, "[TAG]NoPwd Auth kick"

    const-string/jumbo v5, "[Auth]NoPwd receive kick"

    const-string/jumbo v6, "auth"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v4, "dt"

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    .line 34
    .local v0, "cast":Ljac;
    const/4 v3, 0x0

    .line 36
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v4

    const-class v5, Lcom/alibaba/wukong/auth/n;

    invoke-interface {v0, v4, v5}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/auth/n;

    .line 37
    .local v2, "model":Lcom/alibaba/wukong/auth/n;
    if-eqz v2, :cond_0

    .line 38
    iget-object v3, v2, Lcom/alibaba/wukong/auth/n;->V:Ljava/lang/String;

    .line 39
    const-string/jumbo v4, "[KickOutHandlerV2] kickMsg %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/alibaba/wukong/auth/n;->V:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v4, v2, Lcom/alibaba/wukong/auth/n;->U:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/wukong/auth/n;->U:Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/wukong/auth/n;->V:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/wukong/auth/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2    # "model":Lcom/alibaba/wukong/auth/n;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/wukong/auth/i;->O:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v4, v3}, Lcom/alibaba/wukong/auth/g;->a(Ljava/lang/String;)V

    .line 49
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v4}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->logout()V

    .line 51
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/i;->apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V

    return-void
.end method
