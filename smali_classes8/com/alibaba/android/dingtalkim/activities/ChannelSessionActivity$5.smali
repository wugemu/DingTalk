.class final Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ChannelSessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Z)V

    .line 379
    return-void
.end method
