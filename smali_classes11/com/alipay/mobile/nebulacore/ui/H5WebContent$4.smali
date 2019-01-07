.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$900(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 419
    return-void
.end method
