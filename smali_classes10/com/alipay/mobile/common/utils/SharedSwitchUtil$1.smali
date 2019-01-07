.class final Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;
.super Ljava/util/ArrayList;
.source "SharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const-string/jumbo v0, "spdy_switch_android_v2"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 50
    const-string/jumbo v0, "spdy_uniformorigin_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
