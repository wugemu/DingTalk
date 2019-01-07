.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    const/4 v1, 0x0

    invoke-static {v1}, Lcms;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)I

    .line 209
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    goto :goto_0

    .line 212
    :cond_2
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Net exception"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "net"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v1, "ts"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "meeting_overtime_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZI)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    goto :goto_0
.end method
