.class final Lfbq$12;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbq;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/ImageData;

.field final synthetic b:Lfbq;


# direct methods
.method constructor <init>(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 539
    iput-object p1, p0, Lfbq$12;->b:Lfbq;

    iput-object p2, p0, Lfbq$12;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 539
    .line 1543
    iget-object v0, p0, Lfbq$12;->b:Lfbq;

    invoke-static {v0}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lfbq$12;->b:Lfbq;

    const/16 v1, 0x8

    iget-object v2, p0, Lfbq$12;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v0, v1, v3, v3, v2}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 1548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1549
    const-string/jumbo v1, "key_certify_url"

    iget-object v2, p0, Lfbq$12;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v1, p0, Lfbq$12;->b:Lfbq;

    invoke-static {v1, v0}, Lfbq;->a(Lfbq;Landroid/os/Bundle;)V

    .line 539
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 560
    iget-object v1, p0, Lfbq$12;->b:Lfbq;

    const/16 v2, 0x8

    const/4 v3, -0x1

    iget-object v4, p0, Lfbq$12;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v1, v2, v3, v5, v4}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 561
    iget-object v1, p0, Lfbq$12;->b:Lfbq;

    invoke-static {v1}, Lfbq;->h(Lfbq;)V

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_certify_err_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v1, "key_certify_err_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v1, "key_certify_url"

    iget-object v2, p0, Lfbq$12;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lfbq$12;->b:Lfbq;

    invoke-static {v1, v0}, Lfbq;->a(Lfbq;Landroid/os/Bundle;)V

    .line 567
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ocrBackCertify fail:%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "process"    # I

    .prologue
    .line 556
    return-void
.end method
