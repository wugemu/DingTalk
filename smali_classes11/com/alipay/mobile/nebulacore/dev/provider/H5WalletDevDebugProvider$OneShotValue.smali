.class Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneShotValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

.field used:Z

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "used"    # Z

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->value:Ljava/lang/Object;

    .line 466
    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->used:Z

    .line 467
    return-void
.end method
