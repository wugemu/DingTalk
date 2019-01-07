.class final Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$1;
.super Ljava/lang/Object;
.source "ChatMsgListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    const/4 v0, 0x0

    return v0
.end method
