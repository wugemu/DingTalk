.class Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;
.super Ljava/lang/Object;
.source "H5LongClickPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$bridgeContext:Liny;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$cusHandleResult:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$bridgeContext:Liny;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$cusHandleResult:Z

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->val$savePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    const-string/jumbo v0, "H5LongClickPlugin"

    const-string/jumbo v1, "dismiss exception."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
