.class public Lcom/alibaba/wukong/auth/h;
.super Ljava/lang/Object;
.source "KickOutHandler.java"

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/wukong/auth/h;->O:Lcom/alibaba/wukong/auth/g;

    .line 24
    return-void
.end method


# virtual methods
.method public apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v3, "[TAG] Auth kick"

    const-string/jumbo v4, "[Auth] receive kick"

    const-string/jumbo v5, "auth"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    move-object v1, v2

    .line 35
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/wukong/auth/h;->O:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v3, v1}, Lcom/alibaba/wukong/auth/g;->a(Ljava/lang/String;)V

    .line 36
    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v3}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->logout()V

    .line 38
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/h;->apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V

    return-void
.end method
