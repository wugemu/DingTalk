.class Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;
.super Ljava/lang/Object;
.source "JsapiLwpCall.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseReply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRpcKey:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;Liyv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "handler":Liyv;, "Liyv<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mHandlers:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private postHandler(Lcom/laiwang/protocol/core/Response;Ljava/util/List;)V
    .locals 16
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Response;",
            "Ljava/util/List",
            "<",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    .local p2, "handlers":Ljava/util/List;, "Ljava/util/List<Liyv<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    .line 99
    .local v2, "e1":Lcom/laiwang/protocol/core/Constants$Status;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v8

    .line 100
    .local v8, "i$2":[B
    const-string/jumbo v12, "dt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v6

    .line 103
    .local v6, "handler3":Ljac;
    sget-object v12, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v12, v2, :cond_1

    .line 104
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 106
    .local v7, "i$1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 107
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liyv;

    .line 108
    .local v4, "handler1":Liyv;
    invoke-interface {v4}, Liyv;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    const-class v13, Ljava/lang/Void;

    if-ne v12, v13, :cond_0

    .line 109
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Liyv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v2    # "e1":Lcom/laiwang/protocol/core/Constants$Status;
    .end local v4    # "handler1":Liyv;
    .end local v6    # "handler3":Ljac;
    .end local v7    # "i$1":Ljava/util/Iterator;
    .end local v8    # "i$2":[B
    :catch_0
    move-exception v10

    .line 157
    .local v10, "var10":Ljava/lang/Exception;
    move-object v1, v10

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "handler1":Ljava/lang/Object;
    move-object v3, v4

    .line 160
    check-cast v3, Liyv;

    .line 161
    .local v3, "handler":Liyv;
    const/4 v13, 0x0

    invoke-interface {v3, v13, v1}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Liyv;
    .end local v10    # "var10":Ljava/lang/Exception;
    .restart local v2    # "e1":Lcom/laiwang/protocol/core/Constants$Status;
    .local v4, "handler1":Liyv;
    .restart local v6    # "handler3":Ljac;
    .restart local v7    # "i$1":Ljava/util/Iterator;
    .restart local v8    # "i$2":[B
    :cond_0
    :try_start_1
    invoke-interface {v4}, Liyv;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v6, v8, v12}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v4, v12}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .end local v4    # "handler1":Liyv;
    .end local v7    # "i$1":Ljava/util/Iterator;
    :cond_1
    sget-object v12, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v12, v2, :cond_2

    .line 119
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 121
    .restart local v7    # "i$1":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 122
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liyv;

    .line 123
    .restart local v4    # "handler1":Liyv;
    const-class v12, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v6, v8, v12}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/laiwang/idl/service/ResultError;

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 129
    .end local v4    # "handler1":Liyv;
    .end local v7    # "i$1":Ljava/util/Iterator;
    :cond_2
    sget-object v12, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v12, v2, :cond_5

    .line 130
    const/4 v9, 0x0

    .line 133
    .local v9, "i$3":Lcom/laiwang/idl/service/ResultError;
    :try_start_2
    const-class v12, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v6, v8, v12}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/laiwang/idl/service/ResultError;

    move-object v9, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :goto_3
    if-nez v9, :cond_3

    .line 139
    :try_start_3
    new-instance v9, Lcom/laiwang/idl/service/ResultError;

    .end local v9    # "i$3":Lcom/laiwang/idl/service/ResultError;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_4

    new-instance v12, Ljava/lang/String;

    const-string/jumbo v14, "utf-8"

    invoke-direct {v12, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_4
    invoke-direct {v9, v13, v12}, Lcom/laiwang/idl/service/ResultError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .restart local v9    # "i$3":Lcom/laiwang/idl/service/ResultError;
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, "handler":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Liyv;

    move-object v5, v0

    .line 144
    .local v5, "handler2":Liyv;
    const/4 v13, 0x0

    invoke-interface {v5, v9, v13}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 134
    .end local v3    # "handler":Ljava/lang/Object;
    .end local v5    # "handler2":Liyv;
    :catch_1
    move-exception v11

    .line 135
    .local v11, "var9":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v9    # "i$3":Lcom/laiwang/idl/service/ResultError;
    .end local v11    # "var9":Ljava/lang/Throwable;
    :cond_4
    const-string/jumbo v12, ""

    goto :goto_4

    .line 150
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 152
    .restart local v7    # "i$1":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 153
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liyv;

    .line 154
    .restart local v4    # "handler1":Liyv;
    new-instance v13, Lcom/laiwang/idl/service/ResultError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_6

    new-instance v12, Ljava/lang/String;

    const-string/jumbo v15, "utf-8"

    invoke-direct {v12, v8, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_7
    invoke-direct {v13, v14, v12}, Lcom/laiwang/idl/service/ResultError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-interface {v4, v13, v12}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    const-string/jumbo v12, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 165
    .end local v2    # "e1":Lcom/laiwang/protocol/core/Constants$Status;
    .end local v4    # "handler1":Liyv;
    .end local v6    # "handler3":Ljac;
    .end local v7    # "i$1":Ljava/util/Iterator;
    .end local v8    # "i$2":[B
    :cond_7
    return-void
.end method


# virtual methods
.method public addHandler(Liyv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "handler":Liyv;, "Liyv<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public on(Lcom/laiwang/protocol/core/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mRpcKey:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mHandlers:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->postHandler(Lcom/laiwang/protocol/core/Response;Ljava/util/List;)V

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method

.method public setRpcKey(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;)V
    .locals 0
    .param p1, "rpcKey"    # Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;->mRpcKey:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;

    .line 86
    return-void
.end method
