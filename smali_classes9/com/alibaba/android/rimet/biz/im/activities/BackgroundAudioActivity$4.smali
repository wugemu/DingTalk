.class final Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;
.super Ljava/lang/Object;
.source "BackgroundAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->pauseBackgroundAudio()V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->f(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->playBackgroundAudio()V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
