.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;
.super Ljava/lang/Object;
.source "TeleVoipFailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .line 94
    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method
