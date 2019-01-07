.class final Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;
.super Landroid/os/Handler;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;)I

    move-result v0

    invoke-static {}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;Z)Z

    .line 132
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->postInvalidate()V

    .line 134
    :cond_0
    return-void
.end method
