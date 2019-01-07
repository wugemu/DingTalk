.class final Lbbo$70;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1254
    iput-object p1, p0, Lbbo$70;->b:Lbbo;

    iput-object p2, p0, Lbbo$70;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1254
    .line 2258
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingDataCenter] confirmAllCommentRemindsByRemote  readAllComment success."

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2259
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    .line 3139
    iget-object v0, v0, Lbbo;->g:Lbgq;

    .line 2259
    invoke-interface {v0}, Lbgq;->o_()Ljava/util/List;

    move-result-object v0

    .line 2260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2261
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 2263
    if-eqz v0, :cond_0

    .line 4096
    iget-wide v4, v0, Lbeq;->a:J

    .line 2266
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2268
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2269
    if-eqz v0, :cond_2

    .line 2272
    iget-object v2, p0, Lbbo$70;->b:Lbbo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 2273
    iget-object v2, p0, Lbbo$70;->b:Lbbo;

    invoke-virtual {v2, v0}, Lbbo;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_1

    .line 2275
    :cond_3
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->g:Lbgq;

    .line 2275
    invoke-interface {v0}, Lbgq;->a()I

    .line 2276
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    invoke-virtual {v0}, Lbbo;->c()V

    .line 2277
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()V

    .line 2280
    :cond_4
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    iget-object v1, p0, Lbbo$70;->a:Lcom/alibaba/wukong/Callback;

    .line 5139
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1289
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingDataCenter] confirmAllCommentRemindsByRemote failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lbbo$70;->b:Lbbo;

    iget-object v1, p0, Lbbo$70;->a:Lcom/alibaba/wukong/Callback;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1285
    return-void
.end method
