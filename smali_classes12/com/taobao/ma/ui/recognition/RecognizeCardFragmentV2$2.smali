.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
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
        "Lcom/taobao/ma/model/RecognizeResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 661
    check-cast p1, Lcom/taobao/ma/model/RecognizeResponseObject;

    .line 1664
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1665
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1666
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1667
    const-string/jumbo v0, "dt_tranfer"

    const-string/jumbo v3, "BusinessCard"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v0, p1, Lcom/taobao/ma/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/model/CardInfoObject;

    .line 1670
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/taobao/ma/model/CardInfoObject;->key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1673
    iget-object v4, v0, Lcom/taobao/ma/model/CardInfoObject;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/ma/model/CardInfoObject;->value:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1675
    :cond_1
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 1678
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1679
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Ljava/lang/String;)Ljava/lang/String;

    .line 1680
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iget-object v1, p1, Lcom/taobao/ma/model/RecognizeResponseObject;->mediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->c(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Ljava/lang/String;)Ljava/lang/String;

    .line 1681
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 661
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 691
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 692
    const-string/jumbo v0, "RecognizeCardActivity"

    const-string/jumbo v1, "recognizeNameCard fail: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 687
    return-void
.end method
