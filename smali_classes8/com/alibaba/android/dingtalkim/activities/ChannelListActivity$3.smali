.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    .line 169
    return-void
.end method
