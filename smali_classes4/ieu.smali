.class public final Lieu;
.super Ljava/lang/Object;
.source "PushReceiver.java"

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "/s/av_call"

    invoke-static {v0, p0}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 22
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4
    .param p0, "payload"    # [B

    .prologue
    .line 58
    const-string/jumbo v1, ""

    .line 60
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    .line 65
    .end local v2    # "str":Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 16
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .line 1026
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v0

    .line 1051
    const-string/jumbo v1, "/s/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "av_call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "av_call/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1029
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v0

    invoke-static {v0}, Lieu;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 1030
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1033
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v1

    .line 1206
    iget-object v2, v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->f:Lied$i;

    if-eqz v2, :cond_2

    .line 1207
    iget-object v1, v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->f:Lied$i;

    invoke-interface {v1}, Lied$i;->a()Z

    .line 1034
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;Z)V

    .line 1037
    :cond_3
    if-eqz p2, :cond_4

    .line 1038
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_4
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1042
    if-eqz p2, :cond_4

    .line 1043
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_0
.end method
