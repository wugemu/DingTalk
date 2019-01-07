.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;


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
    .line 502
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 505
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Clk window "

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 508
    .local v1, "destWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCanRecall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "For recall user"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 523
    .end local v1    # "destWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_0
    :goto_0
    return-void

    .line 513
    .restart local v1    # "destWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "For switch user"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_main_subwindow_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "action"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .prologue
    .line 528
    return-void
.end method
