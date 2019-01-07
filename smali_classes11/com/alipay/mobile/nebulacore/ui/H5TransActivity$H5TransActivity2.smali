.class public Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity2;
.super Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.source "H5TransActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H5TransActivity2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string/jumbo v0, "H5TransActivity"

    const-string/jumbo v1, "onCreate H5TransActivity2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
