.class public Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;
.super Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;
.source "QRCodeImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v2, v4

    .line 124
    :cond_1
    :goto_0
    return-object v2

    .line 110
    :cond_2
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;-><init>()V

    .line 111
    .local v1, "pictureEngineService":Lcom/alipay/mobile/mascanengine/MaPictureEngineService;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/mascanengine/MaPictureEngineService;->process(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v2

    .line 114
    .local v2, "result":Lcom/alipay/mobile/mascanengine/MaScanResult;
    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move-object v2, v4

    .line 117
    goto :goto_0

    .line 119
    .end local v1    # "pictureEngineService":Lcom/alipay/mobile/mascanengine/MaPictureEngineService;
    .end local v2    # "result":Lcom/alipay/mobile/mascanengine/MaScanResult;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-class v5, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    move-object v2, v4

    .line 124
    goto :goto_0

    .line 121
    :catch_1
    move-exception v3

    .line 122
    .local v3, "t":Ljava/lang/Throwable;
    const-class v5, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/Object;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "selfHandle"    # Z
    .param p4, "listener"    # Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/alipay/mobile/mascanengine/MaScanResult;

    if-eqz v0, :cond_0

    .line 130
    check-cast p2, Lcom/alipay/mobile/mascanengine/MaScanResult;

    .end local p2    # "result":Ljava/lang/Object;
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/capture.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/capture.html"

    new-instance v2, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$1;-><init>(Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;Landroid/os/Bundle;)V

    .line 60
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 70
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/scan_combine.html"

    new-instance v2, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl$2;-><init>(Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/rimet/huoyan/scan/QRCodeImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 136
    invoke-static {p1}, Lika;->a(Landroid/content/Context;)V

    .line 137
    return-void
.end method
