.class Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;
.super Ljava/lang/Object;
.source "H5LongClickPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->handleSaveImg(Ljava/lang/String;ZLiny;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$cusHandleResult:Z

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$bridgeContext:Liny;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$cusHandleResult:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$bridgeContext:Liny;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$cusHandleResult:Z

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;->val$savePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method
