.class public Lcom/alipay/android/app/render/birdnest/provider/CashierSettingProvider;
.super Ljava/lang/Object;
.source "CashierSettingProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;


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
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierSettingProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 12
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method
