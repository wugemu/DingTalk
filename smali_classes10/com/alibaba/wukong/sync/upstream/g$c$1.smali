.class final Lcom/alibaba/wukong/sync/upstream/g$c$1;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/upstream/g$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/upstream/g$c;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/upstream/g$c;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    iget-object v5, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 1185
    iget-object v5, v5, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 2065
    iget-object v4, v5, Lift;->a:Ljava/lang/String;

    .line 203
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 204
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v5, "dt"

    const-string/jumbo v6, "p"

    invoke-virtual {v0, v5, v6}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 205
    iget-object v5, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 2185
    iget-object v5, v5, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 3069
    iget-object v3, v5, Lift;->b:[B

    .line 206
    .local v3, "src":[B
    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;

    .line 207
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v2

    .line 208
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    iget-object v5, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 3185
    iget-object v5, v5, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 4073
    iget-object v5, v5, Lift;->d:Ljava/util/Map;

    .line 208
    invoke-virtual {v2, v5}, Lcom/laiwang/protocol/core/Request;->setHeaders(Ljava/util/Map;)V

    .line 209
    iget-object v5, p0, Lcom/alibaba/wukong/sync/upstream/g$c$1;->a:Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 4185
    iget-object v5, v5, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 5093
    iget-wide v6, v5, Lift;->h:J

    .line 209
    invoke-virtual {v2, v6, v7}, Lcom/laiwang/protocol/core/Request;->setTimeout(J)V

    .line 210
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v1

    .line 211
    .local v1, "newMid":Lcom/laiwang/protocol/core/MessageID;
    invoke-virtual {v2, v1}, Lcom/laiwang/protocol/core/Request;->setMessageID(Lcom/laiwang/protocol/core/MessageID;)V

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "run task "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/MessageID;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v5, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/alibaba/wukong/sync/upstream/g$c$1$1;-><init>(Lcom/alibaba/wukong/sync/upstream/g$c$1;Lcom/laiwang/protocol/core/MessageID;[B)V

    invoke-static {v2, v5}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 250
    return-void
.end method
