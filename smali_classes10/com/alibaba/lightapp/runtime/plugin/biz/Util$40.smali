.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleUploadMedia(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$medias:Ljava/util/ArrayList;

.field final synthetic val$resps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4314
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$medias:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$resps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 4317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 4318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$medias:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 4319
    .local v6, "ret":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    if-ne v0, v7, :cond_2

    .line 4320
    iget-object v0, v6, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcqq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v1, "video file is too large"

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4337
    .end local v6    # "ret":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_0
    :goto_0
    return-void

    .line 4325
    .restart local v6    # "ret":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$resps:Ljava/util/List;

    invoke-static {v0, v6, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V

    goto :goto_0

    .line 4329
    .end local v6    # "ret":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4330
    .local v3, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 4331
    .local v2, "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-nez v2, :cond_3

    .line 4332
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v1, "path is null"

    invoke-static {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0

    .line 4335
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;->val$resps:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    goto :goto_1
.end method
