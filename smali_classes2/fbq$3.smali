.class final Lfbq$3;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/ImageData;

.field final synthetic b:I

.field final synthetic c:Lfbq;


# direct methods
.method constructor <init>(Lfbq;Lcom/alibaba/android/user/certify/ImageData;I)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 723
    iput-object p1, p0, Lfbq$3;->c:Lfbq;

    iput-object p2, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    iput p3, p0, Lfbq$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 767
    iget v0, p0, Lfbq$3;->b:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbq$3;->b:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbq$3;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 769
    :cond_0
    iget-object v0, p0, Lfbq$3;->c:Lfbq;

    invoke-static {v0}, Lfbq;->h(Lfbq;)V

    .line 770
    iget-object v0, p0, Lfbq$3;->c:Lfbq;

    iget-object v1, p0, Lfbq$3;->c:Lfbq;

    invoke-static {v1}, Lfbq;->j(Lfbq;)Lcom/alibaba/wukong/Callback;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_1
    iget-object v0, p0, Lfbq$3;->c:Lfbq;

    iget v1, p0, Lfbq$3;->b:I

    iget-object v2, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v0, v1, p2, v4, v2}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 773
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUploadFail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    return-void
.end method

.method public final onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 732
    iget-object v4, p0, Lfbq$3;->c:Lfbq;

    invoke-static {v4}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    const/4 v1, 0x0

    .line 738
    .local v1, "code":I
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 740
    iget-object v4, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/certify/ImageData;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v3    # "url":Ljava/lang/String;
    :goto_1
    iget v4, p0, Lfbq$3;->b:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 751
    iget-object v4, p0, Lfbq$3;->c:Lfbq;

    iget-object v5, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v4, v5}, Lfbq;->a(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V

    goto :goto_0

    .line 742
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 744
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const/4 v1, -0x1

    .line 746
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 752
    .end local v2    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget v4, p0, Lfbq$3;->b:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 754
    iget-object v4, p0, Lfbq$3;->c:Lfbq;

    iget-object v5, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v4, v5}, Lfbq;->b(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V

    goto :goto_0

    .line 756
    :cond_4
    iget-object v4, p0, Lfbq$3;->c:Lfbq;

    iget v5, p0, Lfbq$3;->b:I

    const/4 v6, 0x0

    iget-object v7, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {v4, v5, v1, v6, v7}, Lfbq;->a(Lfbq;IIILjava/lang/Object;)V

    .line 757
    iget v4, p0, Lfbq$3;->b:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "key_certify_url"

    iget-object v5, p0, Lfbq$3;->a:Lcom/alibaba/android/user/certify/ImageData;

    invoke-virtual {v5}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v4, p0, Lfbq$3;->c:Lfbq;

    invoke-static {v4, v0}, Lfbq;->a(Lfbq;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 728
    return-void
.end method
