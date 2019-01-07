.class final Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$5;
.super Ljava/lang/Object;
.source "BackgroundAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$5;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$5;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/view/View;)V

    .line 181
    return-void
.end method
