.class final Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;
.super Ljava/lang/Object;
.source "DeviceServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->d(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Z)Z

    .line 187
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    const-string/jumbo v1, "end"

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$3;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    const-string/jumbo v1, "exception"

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
