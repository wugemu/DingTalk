.class final Lfbq$11;
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
        "Lcom/alibaba/android/user/model/RealVerifyOCRObject;",
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
    .line 489
    iput-object p1, p0, Lfbq$11;->b:Lfbq;

    iput-object p2, p0, Lfbq$11;->a:Lcom/alibaba/android/user/certify/ImageData;

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

    .line 489
    check-cast p1, Lcom/alibaba/android/user/model/RealVerifyOCRObject;

    .line 1493
    iget-object v0, p0, Lfbq$11;->b:Lfbq;

    invoke-static {v0}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lfbq$11;->b:Lfbq;

    const/4 v1, 0x7

    iget-object v2, p0, Lfbq$11;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v0, v1, v3, v3, v2}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 1499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1500
    const-string/jumbo v1, "key_certify_url"

    iget-object v2, p0, Lfbq$11;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    if-eqz p1, :cond_1

    .line 1502
    const-string/jumbo v1, "key_certify_code"

    iget-object v2, p1, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string/jumbo v1, "key_certify_name"

    iget-object v2, p1, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :goto_0
    iget-object v1, p0, Lfbq$11;->b:Lfbq;

    invoke-static {v1, v0}, Lfbq;->a(Lfbq;Landroid/os/Bundle;)V

    .line 489
    :cond_0
    return-void

    .line 1505
    :cond_1
    const-string/jumbo v1, "key_certify_err_code"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string/jumbo v1, "key_certify_err_msg"

    iget-object v2, p0, Lfbq$11;->b:Lfbq;

    invoke-static {v2}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->dt_certify_take_photo_id_card_recognize_fail:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .line 518
    iget-object v1, p0, Lfbq$11;->b:Lfbq;

    const/4 v2, 0x7

    const/4 v3, -0x1

    iget-object v4, p0, Lfbq$11;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v1, v2, v3, v5, v4}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lfbq$11;->b:Lfbq;

    invoke-static {v1}, Lfbq;->h(Lfbq;)V

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_certify_err_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v1, "key_certify_err_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v1, "key_certify_url"

    iget-object v2, p0, Lfbq$11;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lfbq$11;->b:Lfbq;

    invoke-static {v1, v0}, Lfbq;->a(Lfbq;Landroid/os/Bundle;)V

    .line 525
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ocrCertify fail:%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "process"    # I

    .prologue
    .line 514
    return-void
.end method
