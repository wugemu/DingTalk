.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;
.super Ljava/lang/Object;
.source "NameCardExchangeShareRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;

    invoke-static {v3}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v2, Lcom/laiwang/protocol/media/MediaId;

    sget-object v3, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 99
    .local v2, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 103
    .local v1, "size":I
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "mQrcodeBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;->c:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "mQrcodeBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "size":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method
