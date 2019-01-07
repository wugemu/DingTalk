.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2590
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v1, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;)V

    goto :goto_0
.end method
