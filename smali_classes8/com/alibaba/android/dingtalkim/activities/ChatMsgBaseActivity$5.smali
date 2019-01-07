.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;
.super Ljava/lang/Object;
.source "ChatMsgBaseActivity.java"

# interfaces
.implements Ldnu$c;


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
    .line 429
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;J)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "messageId"    # J

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)J

    .line 433
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 434
    const/4 v0, 0x0

    return v0
.end method
