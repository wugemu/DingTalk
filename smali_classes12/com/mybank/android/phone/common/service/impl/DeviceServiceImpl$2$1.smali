.class final Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;
.super Ljava/lang/Object;
.source "DeviceServiceImpl.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 1
    .param p1, "result"    # Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;

    iget-object v0, v0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0, p1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    .line 138
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2$1;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;

    iget-object v0, v0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$2;->b:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0, p1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    .line 140
    :cond_0
    return-void
.end method
