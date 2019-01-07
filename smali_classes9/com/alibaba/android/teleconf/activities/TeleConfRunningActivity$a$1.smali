.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$1;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .prologue
    .line 3054
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3057
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 3058
    return-void
.end method
