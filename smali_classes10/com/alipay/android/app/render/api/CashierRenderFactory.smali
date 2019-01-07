.class public Lcom/alipay/android/app/render/api/CashierRenderFactory;
.super Ljava/lang/Object;
.source "CashierRenderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/alipay/android/app/render/api/ext/BirdNestRender;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    invoke-direct {v0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;-><init>()V

    return-object v0
.end method
