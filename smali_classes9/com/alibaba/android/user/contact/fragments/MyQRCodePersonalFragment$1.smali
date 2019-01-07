.class final Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;
.super Ljava/lang/Object;
.source "MyQRCodePersonalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->a(Landroid/widget/ImageView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 114
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "https://qr.dingtalk.com/page/profile"

    aput-object v7, v6, v11

    const-string/jumbo v7, "?"

    aput-object v7, v6, v12

    const-string/jumbo v7, "profile"

    aput-object v7, v6, v13

    const/4 v7, 0x3

    const-string/jumbo v8, "="

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "encodeText":Ljava/lang/String;
    new-instance v5, Lcom/laiwang/protocol/media/MediaId;

    sget-object v6, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v5, v6}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 116
    .local v5, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 119
    :try_start_0
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "codedUid":Ljava/lang/String;
    const-string/jumbo v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "encodedUid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 124
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 125
    .local v4, "size":I
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v4, v7, v8}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->a(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 126
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->a:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->a(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->b:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    .end local v0    # "codedUid":Ljava/lang/String;
    .end local v3    # "encodedUid":Ljava/lang/String;
    .end local v4    # "size":I
    :goto_0
    return-void

    .line 128
    .restart local v0    # "codedUid":Ljava/lang/String;
    .restart local v3    # "encodedUid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lcom/google/zxing/WriterException;
    :try_start_2
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "MyQRCodePersonalFragment initQrCode error : "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 132
    .end local v0    # "codedUid":Ljava/lang/String;
    .end local v1    # "e":Lcom/google/zxing/WriterException;
    .end local v3    # "encodedUid":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "MyQRCodePersonalFragment initQrCode error : "

    aput-object v9, v8, v11

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_2
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;->c:Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "MyQRCodePersonalFragment initQrCode error : "

    aput-object v9, v8, v11

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
