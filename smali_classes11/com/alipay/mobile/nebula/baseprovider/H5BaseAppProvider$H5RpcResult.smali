.class public Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
.super Ljava/lang/Object;
.source "H5BaseAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H5RpcResult"
.end annotation


# instance fields
.field isLimit:Z

.field success:Z

.field final synthetic this$0:Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->this$0:Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
