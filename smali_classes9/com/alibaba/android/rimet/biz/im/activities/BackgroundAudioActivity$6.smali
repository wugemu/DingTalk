.class final Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_background_audio_stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->f(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I

    .line 198
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
