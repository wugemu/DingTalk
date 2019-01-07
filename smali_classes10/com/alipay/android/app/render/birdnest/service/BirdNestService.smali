.class public abstract Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
.super Ljava/lang/Object;
.source "BirdNestService.java"


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract buildFBContext(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/FBContext;
.end method

.method public getProvider()Lcom/alipay/android/app/render/api/ICashierProvider;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-object v0
.end method

.method public initialize(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 28
    return-void
.end method

.method public abstract onBackPressed(Landroid/view/View;)Z
.end method

.method public abstract releaseResource(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method
