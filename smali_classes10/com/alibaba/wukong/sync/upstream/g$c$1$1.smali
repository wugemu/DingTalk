.class final Lcom/alibaba/wukong/sync/upstream/g$c$1$1;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/upstream/g$c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lcom/laiwang/protocol/core/MessageID;

.field final synthetic b:[B

.field final synthetic c:Lcom/alibaba/wukong/sync/upstream/g$c$1;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/upstream/g$c$1;Lcom/laiwang/protocol/core/MessageID;[B)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->a:Lcom/laiwang/protocol/core/MessageID;

    iput-object p3, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic on(Ljava/lang/Object;)V
    .locals 8
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 213
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    .line 1216
    .end local p1    # "x0":Ljava/lang/Object;
    const-string/jumbo v0, "dt"

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    .line 1218
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v1

    .line 1219
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v3

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "task response "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->a:Lcom/laiwang/protocol/core/MessageID;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/MessageID;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v4, v1, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v4, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 1256
    iget-object v0, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    invoke-static {v0}, Lifs;->b(Lift;)I

    .line 1257
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 2065
    iget-object v1, v1, Lift;->a:Ljava/lang/String;

    .line 1257
    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    if-eqz v0, :cond_1

    .line 1263
    :try_start_1
    iget-object v1, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 2069
    iget-object v1, v1, Lift;->b:[B

    .line 1263
    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncListener;->getParamsType()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v1, v5}, Lifr;->a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1270
    :try_start_2
    const-string/jumbo v5, "p"

    invoke-static {v5}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v5

    .line 1271
    new-instance v6, Lcom/alibaba/wukong/sync/SyncResult;

    invoke-direct {v6}, Lcom/alibaba/wukong/sync/SyncResult;-><init>()V

    .line 1272
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/alibaba/wukong/sync/SyncResult;->mSuccess:Z

    .line 1273
    iput-object v1, v6, Lcom/alibaba/wukong/sync/SyncResult;->args:[Ljava/lang/Object;

    .line 1274
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncListener;->getResultType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/lang/Void;

    if-eq v1, v7, :cond_0

    .line 1275
    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncListener;->getResultType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/wukong/sync/SyncResult;->mData:Ljava/lang/Object;

    .line 1277
    :cond_0
    iget-object v1, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    iget-object v1, v1, Lift;->f:Ljava/util/Map;

    iput-object v1, v6, Lcom/alibaba/wukong/sync/SyncResult;->mExtras:Ljava/util/Map;

    .line 1278
    invoke-virtual {v0, v6}, Lcom/alibaba/wukong/sync/SyncListener;->onResult(Lcom/alibaba/wukong/sync/SyncResult;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1246
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/sync/upstream/g;->a(Lcom/alibaba/wukong/sync/upstream/g;)V

    .line 1247
    :goto_1
    return-void

    .line 1264
    :catch_0
    move-exception v1

    .line 1265
    :try_start_3
    iget-object v3, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 3069
    iget-object v3, v3, Lift;->b:[B

    .line 1266
    const-string/jumbo v5, "[offline] resp handle onSuccess err, %s len=%s type %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 4065
    iget-object v4, v4, Lift;->a:Ljava/lang/String;

    .line 1266
    aput-object v4, v6, v7

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v2

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncListener;->getParamsType()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1242
    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "[offline] resp handle err, %s len=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v4, v4, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-static {v4}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;

    move-result-object v4

    .line 6065
    iget-object v4, v4, Lift;->a:Ljava/lang/String;

    .line 1242
    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->b:[B

    if-nez v0, :cond_9

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v2, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown error"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1246
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/sync/upstream/g;->a(Lcom/alibaba/wukong/sync/upstream/g;)V

    goto :goto_1

    .line 1266
    :cond_2
    :try_start_5
    array-length v3, v3

    goto :goto_2

    .line 1224
    :cond_3
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v4, v1, :cond_5

    .line 1225
    const-class v1, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v0, v3, v1}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/idl/service/ResultError;

    .line 1226
    if-eqz v0, :cond_4

    .line 1227
    iget-object v1, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v1, v1, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    iget-object v3, v0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    iget-object v0, v0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1246
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/sync/upstream/g;->a(Lcom/alibaba/wukong/sync/upstream/g;)V

    throw v0

    .line 1229
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v3, v3, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "unknown error"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1233
    :cond_5
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-static {v0}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;

    move-result-object v0

    .line 4089
    iget v4, v0, Lift;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lift;->g:I

    .line 1233
    if-ge v4, v6, :cond_7

    .line 1234
    const-string/jumbo v0, "SyncTaskExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "task timeout "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v3, v3, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-static {v3}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;

    move-result-object v3

    .line 5085
    iget v3, v3, Lift;->g:I

    .line 1234
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-static {v0}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;

    move-result-object v0

    invoke-static {v0}, Lifs;->c(Lift;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1246
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/sync/upstream/g;->a(Lcom/alibaba/wukong/sync/upstream/g;)V

    goto/16 :goto_1

    .line 1238
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->c:Lcom/alibaba/wukong/sync/upstream/g$c$1;

    iget-object v4, v0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v1, v0}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, ""
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 1242
    :cond_9
    :try_start_8
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;->b:[B

    array-length v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3
.end method
