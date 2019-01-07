.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;
.super Ljava/lang/Object;
.source "TeleVoipFailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    goto :goto_0
.end method
