.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$1;
.super Ljava/lang/Object;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$1;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$1;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    :cond_0
    return v2
.end method
