.class final Ldjz$3$1;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjz$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjz$3;


# direct methods
.method constructor <init>(Ldjz$3;)V
    .locals 0
    .param p1, "this$1"    # Ldjz$3;

    .prologue
    .line 234
    iput-object p1, p0, Ldjz$3$1;->a:Ldjz$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-object v1, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v1, v1, Ldjz$3;->b:Ldjz;

    invoke-static {v1}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 246
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v2, v2, Ldjz$3;->b:Ldjz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Ldjz;->a(Ldjz;Lcom/alibaba/wukong/im/Message;J)V

    goto :goto_0

    .line 248
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    iget-object v1, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v1, v1, Ldjz$3;->b:Ldjz;

    invoke-static {v1}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 249
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    .line 1237
    iget-object v0, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v0, v0, Ldjz$3;->b:Ldjz;

    invoke-static {v0}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1238
    iget-object v2, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v2, v2, Ldjz$3;->b:Ldjz;

    invoke-virtual {v2, v0}, Ldjz;->c(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 1240
    :cond_0
    iget-object v0, p0, Ldjz$3$1;->a:Ldjz$3;

    iget-object v0, v0, Ldjz$3;->b:Ldjz;

    invoke-static {v0}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    return-void
.end method
