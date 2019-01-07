.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

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
    .line 2741
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2742
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    :goto_0
    return-void

    .line 2745
    :cond_0
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Conf ready timeout set"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z

    .line 2747
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    goto :goto_0
.end method
