.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$6;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->cleanOldFilesIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 999
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1005
    const-string/jumbo v4, "h5container"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1006
    .local v2, "rootDir":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1007
    invoke-static {v2, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$400(Ljava/io/File;Z)Z

    .line 1008
    const-string/jumbo v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[bundle diff] clean old so dir! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    .end local v2    # "rootDir":Ljava/io/File;
    :cond_2
    const-string/jumbo v4, "ucmsdk"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 1012
    .local v3, "ucmsdkDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "decompresses"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1013
    .local v1, "decompressDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1014
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$400(Ljava/io/File;Z)Z

    .line 1015
    const-string/jumbo v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "clean old diff dir! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
