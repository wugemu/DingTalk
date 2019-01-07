.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatMsgBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V

    .line 416
    const/4 v0, 0x1

    return v0
.end method
