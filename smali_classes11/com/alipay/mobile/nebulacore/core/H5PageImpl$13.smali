.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initTextSizeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;->val$size:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setTextSize(I)V

    .line 1359
    return-void
.end method
