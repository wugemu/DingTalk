.class Lcom/alipay/mobile/nebula/filecache/FileCache$1;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/filecache/FileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/filecache/FileCache;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/filecache/FileCache;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/filecache/FileCache;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebula/filecache/FileCache$1;->this$0:Lcom/alipay/mobile/nebula/filecache/FileCache;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/filecache/FileCache$1;->val$context:Landroid/content/Context;

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
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebula/filecache/FileCache$1;->this$0:Lcom/alipay/mobile/nebula/filecache/FileCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/filecache/FileCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/filecache/FileCache;->clearExpired(Landroid/content/Context;)V

    .line 39
    return-void
.end method
