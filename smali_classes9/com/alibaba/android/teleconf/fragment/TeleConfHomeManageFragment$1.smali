.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iput-wide p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 149
    check-cast p1, Ljava/util/Map;

    .line 1152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No more biz number info"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :goto_0
    return-void

    .line 1156
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/util/List;)Ljava/util/List;

    .line 1162
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1285
    const-string/jumbo v0, "conf_biz_org_switch_flag"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1286
    if-eqz v0, :cond_2

    .line 1287
    const-string/jumbo v1, "conf_biz_org_switch_flag"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1164
    :cond_2
    if-eqz v0, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V

    goto :goto_0

    .line 1160
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1167
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V

    goto :goto_0

    .line 1171
    :cond_5
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Biz number info have only one"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    sget v0, Leuj$l;->dt_conference_org_switch_warn:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get all num info exp "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 179
    return-void
.end method
