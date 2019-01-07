.class public Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;
.super Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
.source "BirdNestWalletService.java"


# instance fields
.field private mTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;-><init>()V

    .line 23
    return-void
.end method

.method private getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/event/TElementEventHandler;
    .locals 1
    .param p1, "builder"    # Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    .prologue
    .line 51
    new-instance v0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService$1;-><init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)V

    .line 77
    .local v0, "eventHandler":Lcom/alipay/android/app/template/event/TElementEventHandler;
    return-object v0
.end method

.method private getTplService()Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->mTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/c;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->mTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->mTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method


# virtual methods
.method public buildFBContext(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/FBContext;
    .locals 3
    .param p1, "builder"    # Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    new-instance v1, Lcom/alipay/android/app/template/Builder;

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 39
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplId:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/event/TElementEventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setTElementEventHandler(Lcom/alipay/android/app/template/event/TElementEventHandler;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 43
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/Builder;->setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/alipay/android/app/template/Builder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    .line 47
    .local v0, "fbContext":Lcom/alipay/android/app/template/FBContext;
    return-object v0
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->getTplService()Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    .line 83
    .local v0, "service":Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->onBackPressed(Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public releaseResource(I)Ljava/util/List;
    .locals 2
    .param p1, "hashcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestWalletService;->getTplService()Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    .line 89
    .local v0, "service":Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->releaseResourceForQuickPay(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
