.class final Liyw$a;
.super Ljava/lang/Object;
.source "RpcCall.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liyw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
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
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Liyw$b;

.field final synthetic c:Liyw;


# direct methods
.method public constructor <init>(Liyw;Liyv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "handler":Liyv;, "Liyv<Ljava/lang/Object;>;"
    iput-object p1, p0, Liyw$a;->c:Liyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liyw$a;->a:Ljava/util/List;

    .line 213
    iget-object v0, p0, Liyw$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method


# virtual methods
.method public final synthetic on(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 207
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    .line 1226
    iget-object v3, p0, Liyw$a;->a:Ljava/util/List;

    .line 1231
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v4

    .line 1232
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v5

    .line 1233
    const-string/jumbo v0, "dt"

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v6

    .line 1235
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v0, v4, :cond_0

    .line 1236
    iget-object v0, p0, Liyw$a;->c:Liyw;

    invoke-static {v0}, Liyw;->a(Liyw;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :try_start_1
    iget-object v0, p0, Liyw$a;->c:Liyw;

    invoke-static {v0}, Liyw;->a(Liyw;)Ljava/util/List;

    move-result-object v0

    iget-object v7, p0, Liyw$a;->b:Liyw$b;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1238
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    :cond_0
    :try_start_2
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v0, v4, :cond_1

    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v4, :cond_6

    .line 1242
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyv;

    .line 1243
    invoke-interface {v0}, Liyv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v8, Ljava/lang/Void;

    if-eq v1, v8, :cond_3

    if-nez v5, :cond_4

    .line 1244
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liyv;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1291
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyv;

    .line 1292
    invoke-interface {v0, v2, v1}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1238
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1248
    :cond_4
    :try_start_5
    invoke-interface {v0}, Liyv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v6, v5, v1}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    .line 1253
    :goto_2
    :try_start_6
    sget-object v8, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v8, v4, :cond_5

    .line 1254
    instance-of v0, v0, Liyr;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1249
    :catch_1
    move-exception v1

    .line 1251
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    goto :goto_2

    .line 1258
    :cond_5
    invoke-interface {v0, v1}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1265
    :cond_6
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v4, :cond_7

    .line 1266
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyv;

    .line 1267
    const-class v1, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v6, v5, v1}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/idl/service/ResultError;

    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1271
    :cond_7
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-ne v0, v4, :cond_9

    .line 1274
    :try_start_7
    const-class v0, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v6, v5, v0}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/idl/service/ResultError;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1277
    :goto_4
    if-nez v0, :cond_c

    .line 1278
    :try_start_8
    new-instance v0, Lcom/laiwang/idl/service/ResultError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_8

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_5
    invoke-direct {v0, v4, v1}, Lcom/laiwang/idl/service/ResultError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1280
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyv;

    .line 1281
    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_4

    .line 1278
    :cond_8
    const-string/jumbo v1, ""

    goto :goto_5

    .line 1286
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liyv;

    .line 1287
    new-instance v7, Lcom/laiwang/idl/service/ResultError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_a

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v1, v5, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_9
    invoke-direct {v7, v8, v1}, Lcom/laiwang/idl/service/ResultError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    const-string/jumbo v1, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_9

    .line 1294
    :cond_b
    return-void

    :cond_c
    move-object v1, v0

    goto :goto_6
.end method
