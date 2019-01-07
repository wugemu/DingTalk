.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;
.super Ljava/lang/Object;
.source "SpaceGroupActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;
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
        "Ljava/util/List",
        "<",
        "Lcem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 165
    check-cast p1, Ljava/util/List;

    .line 1168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1179
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcem;

    .line 1180
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcem;->c:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 2143
    if-nez v0, :cond_5

    .line 2144
    const-string/jumbo v1, "getSpaceIdFromConversation(OrgConversationModel)"

    const-string/jumbo v4, "null conversation"

    invoke-static {v1, v4}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1182
    :goto_2
    new-instance v4, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcem;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v6}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v1, v0, Lcem;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->setConversionId(Ljava/lang/String;)V

    .line 1185
    iget-object v1, v0, Lcem;->c:Ljava/util/Map;

    const-string/jumbo v5, "S_M_T"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1186
    iget-object v1, v0, Lcem;->c:Ljava/util/Map;

    const-string/jumbo v5, "S_M_T"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->setModifiedTime(Ljava/lang/Long;)V

    .line 1190
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2147
    :cond_5
    iget-object v1, v0, Lcem;->c:Ljava/util/Map;

    invoke-static {v1}, Lgps;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1194
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Ljava/util/ArrayList;)V

    .line 1196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    .line 1197
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1202
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    .line 1203
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Ljava/util/ArrayList;)V

    .line 221
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 210
    return-void
.end method
