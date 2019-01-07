.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 311
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

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
    .line 314
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Clk end btn"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_hangup_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    sget v1, Leuj$l;->dt_conference_video_terminate_tip:I

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;I)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    goto :goto_0
.end method
