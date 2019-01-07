.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;
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
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 174
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->F()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Line exception"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "line"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v2, "uuid"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v2, "ts"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "meeting_overtime_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    new-instance v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 186
    .local v1, "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    :goto_0
    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    :goto_1
    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 189
    const-string/jumbo v2, "line"

    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZI)V

    .line 194
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    .line 196
    :cond_1
    return-void

    .line 186
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_2
    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    goto :goto_0

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
