.class final Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;
.super Ljava/lang/Object;
.source "BioUploadWatchThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->addBioUploadItem(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;->a:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    new-instance v4, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {v4}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    .line 130
    .local v4, "result":Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    const/16 v5, 0xfa1

    iput v5, v4, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 131
    const/16 v5, 0x3e9

    iput v5, v4, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "interrupt":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;->a:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 139
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;->a:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;

    .line 140
    .local v0, "bioUploadCallBack":Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
    invoke-interface {v0, v4}, Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;->onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z

    move-result v2

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "bioUploadCallBack":Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
    :cond_0
    return-void
.end method
