.class Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
.super Ljava/lang/Object;
.source "H5PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyInfo"
.end annotation


# instance fields
.field public plugin:Liov;

.field public pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

.field public registered:Z

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->this$0:Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
