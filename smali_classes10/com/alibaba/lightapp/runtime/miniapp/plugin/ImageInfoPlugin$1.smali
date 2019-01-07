.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;
.super Ljava/lang/Object;
.source "ImageInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic d:Liny;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->d:Liny;

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
    .line 70
    const/4 v1, 0x0

    .line 73
    .local v1, "isNetUrl":Z
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 76
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 77
    :goto_0
    if-nez v1, :cond_3

    .line 78
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 79
    .local v0, "h5Page":Liop;
    if-nez v0, :cond_2

    .line 80
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 121
    .end local v0    # "h5Page":Liop;
    :goto_1
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    .restart local v0    # "h5Page":Liop;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;)V

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liop;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    goto :goto_1

    .line 117
    .end local v0    # "h5Page":Liop;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    .line 120
    .local v2, "pathLocal":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->d:Liny;

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liny;ZLjava/lang/String;)V

    goto :goto_1
.end method
