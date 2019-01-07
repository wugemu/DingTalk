.class final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$2;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->preloadH5Page()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$200()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;-><init>(Landroid/app/Activity;)V

    .line 100
    .local v0, "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    .end local v0    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$200()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v2

    .line 104
    .local v2, "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$300()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$402(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 108
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$502(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 109
    const-string/jumbo v3, "H5PagePreloader"

    const-string/jumbo v4, "preloadH5Page success"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    .end local v2    # "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "thr":Ljava/lang/Throwable;
    const-string/jumbo v3, "h5page_preload_error"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$600(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v3, "H5PagePreloader"

    const-string/jumbo v4, "preload H5Page error!"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
