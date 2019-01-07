.class final Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;
.super Ljava/lang/Thread;
.source "DeviceServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->uploadDeviceInfo(Z)V
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
    .line 124
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Litr;->a(Landroid/content/Context;)Litr;

    .line 127
    return-void
.end method
