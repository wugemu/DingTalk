.class Lcom/taobao/weex/utils/batch/BatchOperationHelper$1;
.super Ljava/lang/Object;
.source "BatchOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/batch/BatchOperationHelper;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/batch/BatchOperationHelper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/batch/BatchOperationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper$1;->this$0:Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v2, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper$1;->this$0:Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    invoke-static {v2}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->access$000(Lcom/taobao/weex/utils/batch/BatchOperationHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 63
    .local v0, "item":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 66
    .end local v0    # "item":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
