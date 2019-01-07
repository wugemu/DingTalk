.class public Lcom/alipay/mobile/security/bio/workspace/BioFragment;
.super Landroid/support/v4/app/Fragment;
.source "BioFragment.java"


# instance fields
.field protected mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

.field protected mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public backward()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;->backward(Landroid/os/Bundle;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;->finish(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    return-void
.end method

.method public forward(Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/alipay/mobile/security/bio/workspace/BioFragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;->forward(Landroid/os/Bundle;Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected getExtService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 20
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;

    move-object v1, v0

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->mBioFragmentCallBack:Lcom/alipay/mobile/security/bio/workspace/BioFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 24
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must BioFragmentService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
