.class public Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;
.super Ljava/lang/Object;
.source "CashierResourceProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 17
    return-void
.end method


# virtual methods
.method public getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .param p4, "paramString3"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramString"    # Ljava/lang/String;
    .param p3, "paramInt1"    # I
    .param p4, "paramInt2"    # I
    .param p5, "paramDrawable1"    # Landroid/graphics/drawable/Drawable;
    .param p6, "paramDrawable2"    # Landroid/graphics/drawable/Drawable;
    .param p7, "paramInt3"    # I
    .param p8, "paramBoolean"    # Z
    .param p9, "paramCallback"    # Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;
    .param p10, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
