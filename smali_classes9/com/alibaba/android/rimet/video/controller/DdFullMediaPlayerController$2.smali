.class final Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;
.super Landroid/os/Handler;
.source "DdFullMediaPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)I

    move-result v1

    .line 93
    .local v1, "pos":I
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Lemj;

    move-result-object v2

    invoke-interface {v2}, Lemj;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "message":Landroid/os/Message;
    rem-int/lit16 v2, v1, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 99
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "pos":I
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
