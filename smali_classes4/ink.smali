.class public final Link;
.super Ljava/lang/Object;
.source "H5NebulaAppManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Linn;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "app"    # Linn;
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Linn;->setAppId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Linn;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Linn;->attachContext(Lcom/alipay/mobile/framework/c;)V

    .line 17
    invoke-virtual {p0, p1}, Linn;->setSourceId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p3}, Linn;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Linn;->onStart()V

    .line 21
    :cond_0
    return-void
.end method
