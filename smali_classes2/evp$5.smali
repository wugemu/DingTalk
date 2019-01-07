.class final Levp$5;
.super Ljava/lang/Object;
.source "TeleVideoMemberListFragment.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levp;


# direct methods
.method constructor <init>(Levp;)V
    .locals 0
    .param p1, "this$0"    # Levp;

    .prologue
    .line 217
    iput-object p1, p0, Levp$5;->a:Levp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 253
    invoke-static {}, Levp;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Click item "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public final a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "action"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    if-eqz p3, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Levp$5;->a:Levp;

    invoke-static {v2}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Levp;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Click item "

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, ", action "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Levp$5;->a:Levp;

    invoke-static {v2}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 226
    .local v1, "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    .line 227
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p3, v2, :cond_2

    .line 228
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_memlist_kickout_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Levp$5;->a:Levp;

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {v2, v3, p2}, Levp;->a(Levp;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;I)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p3, v2, :cond_3

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "muted"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_memlist_mute_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    iget-object v2, p0, Levp$5;->a:Levp;

    invoke-static {v2}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-interface {v2, v3, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;Z)V

    goto :goto_0

    .line 237
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p3, v2, :cond_4

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "muted"

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_memlist_mute_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    iget-object v2, p0, Levp$5;->a:Levp;

    invoke-static {v2}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-interface {v2, v3, v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;Z)V

    goto/16 :goto_0

    .line 243
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p3, v2, :cond_0

    .line 244
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_memlist_recall_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Levp$5;->a:Levp;

    invoke-static {v2}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    new-array v3, v6, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    iget-object v4, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Ljava/util/List;Z)V

    goto/16 :goto_0
.end method
