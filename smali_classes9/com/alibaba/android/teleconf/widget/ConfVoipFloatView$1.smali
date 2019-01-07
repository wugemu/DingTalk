.class final Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;
.super Ljava/lang/Object;
.source "ConfVoipFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Go back to voip activity"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "tele_backto_voip_click"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "meeting_back_to_meeting"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onClick, go back conference activity"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V

    goto :goto_0
.end method
