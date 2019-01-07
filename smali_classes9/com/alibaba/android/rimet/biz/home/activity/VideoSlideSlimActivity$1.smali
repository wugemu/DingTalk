.class final Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$1;
.super Ljava/lang/Object;
.source "VideoSlideSlimActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
