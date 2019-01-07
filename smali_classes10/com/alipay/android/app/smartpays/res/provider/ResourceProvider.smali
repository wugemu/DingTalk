.class public Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;
.super Ljava/lang/Object;
.source "ResourceProvider.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/api/IResourceProvider;


# static fields
.field public static PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "com.alipay.android.phone.safepaybase"

    sput-object v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
