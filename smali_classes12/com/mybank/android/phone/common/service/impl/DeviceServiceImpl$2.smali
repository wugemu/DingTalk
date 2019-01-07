.class final Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;
.super Ljava/lang/Object;
.source "DeviceServiceImpl.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->uploadDeviceInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 4
    .param p1, "result"    # Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->c(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->a:Ljava/util/Map;

    new-instance v3, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;

    invoke-direct {v3, p0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;-><init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0, p1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    .line 144
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0, p1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    goto :goto_0
.end method
