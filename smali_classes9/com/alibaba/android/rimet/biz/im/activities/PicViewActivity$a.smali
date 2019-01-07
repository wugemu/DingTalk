.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;
.super Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$c;
.source "PicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "runnable"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "qrBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$c;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;Landroid/app/Activity;)V

    .line 1214
    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    .line 1215
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x17

    .line 1219
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1221
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v0

    .line 1222
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1223
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1238
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    return-void

    .line 1233
    :catchall_0
    move-exception v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1234
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v1
.end method
