.class public Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;
.super Ljava/lang/Object;
.source "CashierIdProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 12
    return-void
.end method


# virtual methods
.method public getUniqueResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method
