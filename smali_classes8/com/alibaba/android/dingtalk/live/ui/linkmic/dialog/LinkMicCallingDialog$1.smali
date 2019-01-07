.class final Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog$1;
.super Landroid/os/Handler;
.source "LinkMicCallingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog$1;->a:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog$1;->a:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a(Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x7e2
        :pswitch_0
    .end packed-switch
.end method
