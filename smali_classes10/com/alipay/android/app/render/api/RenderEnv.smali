.class public Lcom/alipay/android/app/render/api/RenderEnv;
.super Ljava/lang/Object;
.source "RenderEnv.java"


# static fields
.field private static mIsWallet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/render/api/RenderEnv;->mIsWallet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWallet()Z
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/alipay/android/app/render/api/RenderEnv;->mIsWallet:Z

    return v0
.end method

.method public static setIsWallet(Z)V
    .locals 0
    .param p0, "isWallet"    # Z

    .prologue
    .line 12
    sput-boolean p0, Lcom/alipay/android/app/render/api/RenderEnv;->mIsWallet:Z

    .line 13
    return-void
.end method
