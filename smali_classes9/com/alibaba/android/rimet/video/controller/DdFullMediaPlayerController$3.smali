.class final Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;
.super Ljava/lang/Object;
.source "DdFullMediaPlayerController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b()V

    .line 187
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .line 1320
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    goto :goto_0
.end method
