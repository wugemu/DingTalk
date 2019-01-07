.class Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;
.super Ljava/lang/Object;
.source "H5MemoryCache.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    const-string/jumbo v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->access$002(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;Z)Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
