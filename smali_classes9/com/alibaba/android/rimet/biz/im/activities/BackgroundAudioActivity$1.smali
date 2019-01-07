.class final Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;
.super Ljava/lang/Object;
.source "BackgroundAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 105
    return-void
.end method
