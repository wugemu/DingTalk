.class final Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$1;
.super Ljava/lang/Object;
.source "H5NebulaAppConfigManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->access$000(Ljava/lang/String;)V

    .line 57
    return-void
.end method
