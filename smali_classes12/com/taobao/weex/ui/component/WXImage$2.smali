.class Lcom/taobao/weex/ui/component/WXImage$2;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/common/WXImageStrategy$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXImage;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "result"    # Z
    .param p4, "extra"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXImage;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 308
    .local v1, "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    instance-of v2, p2, Lcom/taobao/weex/ui/component/WXImage$Measurable;

    if-eqz v2, :cond_1

    .line 309
    const-string/jumbo v3, "naturalWidth"

    move-object v2, p2

    check-cast v2, Lcom/taobao/weex/ui/component/WXImage$Measurable;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/WXImage$Measurable;->getNaturalWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v3, "naturalHeight"

    move-object v2, p2

    check-cast v2, Lcom/taobao/weex/ui/component/WXImage$Measurable;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/WXImage$Measurable;->getNaturalHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXImage;->containsEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string/jumbo v2, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    const-string/jumbo v3, "load"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/ui/component/WXImage;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    invoke-static {v2, p2}, Lcom/taobao/weex/ui/component/WXImage;->access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;)V

    .line 323
    return-void

    .line 312
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v2, "naturalWidth"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v2, "naturalHeight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
