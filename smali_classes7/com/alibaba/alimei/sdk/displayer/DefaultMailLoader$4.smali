.class Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$4;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->notifyObserverDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 484
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .line 485
    .local v0, "os":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;->onDataChanged()V

    goto :goto_0

    .line 487
    .end local v0    # "os":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;
    :cond_0
    return-void
.end method
