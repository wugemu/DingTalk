.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MsgForwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->finish()V

    .line 247
    return-void
.end method
