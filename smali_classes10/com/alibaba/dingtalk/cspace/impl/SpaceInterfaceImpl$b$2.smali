.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 799
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 1802
    if-nez p1, :cond_0

    .line 1803
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "encrypt error"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :goto_0
    return-void

    .line 1806
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1808
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->b:Lgqt;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "invalidate file"

    invoke-interface {v0, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    .line 2084
    iput-object v1, v0, Lgrc;->d:Ljava/lang/String;

    .line 1812
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->d:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->b:Lgqt;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 821
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "encryptBeforeUpload, "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", orgId = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->a:J

    .line 822
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 821
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    invoke-static {v1, v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->b:Lgqt;

    invoke-interface {v1, p1, p2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 817
    return-void
.end method
