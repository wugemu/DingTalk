.class final Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;
.super Ljava/lang/Object;
.source "BioUploadWatchThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->task()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

.field final synthetic b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    iput-object p2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->a:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, "interrupt":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 106
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;

    .line 107
    .local v0, "bioUploadCallBack":Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->a:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;->onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z

    move-result v2

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "bioUploadCallBack":Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
    :cond_0
    return-void
.end method
