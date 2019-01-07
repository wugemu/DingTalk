.class final Lcom/laiwang/protocol/android/bl$1;
.super Ljava/lang/Object;
.source "RouteUtils.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bl;->a(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/lang/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcom/laiwang/protocol/lang/Callback;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/laiwang/protocol/android/bl$1;->a:Lcom/laiwang/protocol/lang/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/laiwang/protocol/core/Response;)V
    .locals 14
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v7

    .line 87
    .local v7, "status":Lcom/laiwang/protocol/core/Constants$Status;
    sget-object v8, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v7, v8, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v0

    .line 90
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 91
    const-string/jumbo v8, "p"

    invoke-static {v8}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v8

    const-class v10, Lcom/laiwang/protocol/android/br;

    invoke-interface {v8, v0, v10}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/android/br;

    .line 92
    .local v6, "module":Lcom/laiwang/protocol/android/br;
    iget-object v8, v6, Lcom/laiwang/protocol/android/br;->a:Ljava/lang/Long;

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/laiwang/protocol/util/StringUtils;->longValue(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 93
    .local v4, "interval":J
    const-wide/16 v10, 0xe10

    cmp-long v8, v4, v10

    if-gez v8, :cond_0

    .line 94
    const-wide/16 v4, 0xe10

    .line 96
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/android/s;->b()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v4

    add-long v2, v10, v12

    .line 97
    .local v2, "expiredAt":J
    iget-object v8, v6, Lcom/laiwang/protocol/android/br;->b:Ljava/lang/String;

    iget-object v10, v6, Lcom/laiwang/protocol/android/br;->c:Ljava/lang/String;

    invoke-static {v8, v2, v3, v10}, Lcom/laiwang/protocol/android/bl;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/laiwang/protocol/android/bi;

    move-result-object v1

    .line 98
    .local v1, "domains":Lcom/laiwang/protocol/android/bi;
    iget-object v8, p0, Lcom/laiwang/protocol/android/bl$1;->a:Lcom/laiwang/protocol/lang/Callback;

    if-eqz v8, :cond_1

    .line 99
    iget-object v8, p0, Lcom/laiwang/protocol/android/bl$1;->a:Lcom/laiwang/protocol/lang/Callback;

    invoke-interface {v8, v1}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "bytes":[B
    .end local v1    # "domains":Lcom/laiwang/protocol/android/bi;
    .end local v2    # "expiredAt":J
    .end local v4    # "interval":J
    .end local v6    # "module":Lcom/laiwang/protocol/android/br;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .line 105
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[Aladdin] lookupAladdinByLWP response err, status "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_3

    move-object v8, v9

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 106
    iget-object v8, p0, Lcom/laiwang/protocol/android/bl$1;->a:Lcom/laiwang/protocol/lang/Callback;

    if-eqz v8, :cond_1

    .line 107
    iget-object v8, p0, Lcom/laiwang/protocol/android/bl$1;->a:Lcom/laiwang/protocol/lang/Callback;

    invoke-interface {v8, v9}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_3
    iget v8, v7, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1
.end method

.method public final synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bl$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
