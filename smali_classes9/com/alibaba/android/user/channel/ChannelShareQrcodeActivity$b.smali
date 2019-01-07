.class final Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;
.super Ljava/lang/Object;
.source "ChannelShareQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "activity"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->a:Landroid/graphics/Bitmap;

    .line 306
    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .line 307
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 310
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "savedPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;-><init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 328
    .end local v0    # "savedPath":Ljava/lang/String;
    :cond_0
    return-void
.end method
