.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->notifyError(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

.field final synthetic val$errCode:I

.field final synthetic val$errDes:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$views:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$views:Ljava/util/List;

    iput p3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errCode:I

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errDes:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$url:Ljava/lang/String;

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
    .line 927
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 928
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 929
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 931
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 932
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 934
    .local v1, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v1, :cond_0

    .line 935
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$views:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$views:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 936
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$views:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 937
    .local v3, "view":Landroid/view/View;
    iget v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errCode:I

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errDes:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$url:Ljava/lang/String;

    invoke-interface {v1, v5, v6, v7, v3}, Lcom/alibaba/doraemon/image/ImageEventListener;->onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    .line 940
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errCode:I

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$errDes:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;->val$url:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/alibaba/doraemon/image/ImageEventListener;->onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 945
    .end local v1    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 947
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    :cond_3
    return-void
.end method
