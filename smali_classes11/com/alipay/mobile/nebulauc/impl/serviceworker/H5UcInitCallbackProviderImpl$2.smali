.class final Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$2;
.super Ljava/lang/Object;
.source "H5UcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->preLoadAppX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$2;->a:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$2;->a:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V

    .line 82
    return-void
.end method
