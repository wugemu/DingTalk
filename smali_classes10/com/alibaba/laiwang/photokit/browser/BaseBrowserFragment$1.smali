.class final Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;
.super Ljava/lang/Object;
.source "BaseBrowserFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1082
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1083
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1084
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 1085
    .local v1, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 1088
    .end local v1    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1063
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1064
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 1065
    .local v1, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 1068
    .end local v1    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "l"    # J

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1073
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1074
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1075
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_0

    .line 1078
    .end local v0    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l2"    # J
    .param p5, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1092
    return-void
.end method
