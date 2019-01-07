.class final Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;
.super Ljava/lang/Object;
.source "ChannelShareQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .line 372
    invoke-virtual {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->e(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
