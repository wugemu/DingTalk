.class final Lgls$a;
.super Ljava/lang/Object;
.source "CooperationFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lgls$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lgls$c;)Ljava/util/List;
    .locals 8
    .param p1, "param"    # Lgls$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgls$c;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v3, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v3, :cond_1

    .line 95
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 1120
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    iget-boolean v5, p1, Lgls$c;->e:Z

    invoke-virtual {v3, v4, v6, v7, v5}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)Ljava/util/List;

    move-result-object v0

    .line 2023
    .local v0, "aclActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lglp;

    invoke-direct {v3}, Lglp;-><init>()V

    .line 1124
    const-string/jumbo v4, "action_file_release_edit_lock"

    iget-boolean v5, p1, Lgls$c;->b:Z

    .line 1125
    invoke-static {v5}, Lglr;->a(Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_online_edit"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1126
    invoke-static {v5}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_local_edit"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1127
    invoke-static {v5}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_online_edit"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1128
    invoke-static {v5}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_local_edit"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1129
    invoke-static {v5}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_send_to_assistant"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1130
    invoke-static {v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_like"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 1131
    invoke-static {v5, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_comment"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 1132
    invoke-static {v5, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_save_to_ding_drive"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1133
    invoke-static {v5}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_send_file_link"

    iget-object v5, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1134
    invoke-static {v5}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    .line 2038
    iget-object v2, v3, Lglp;->a:Ljava/util/List;

    .line 101
    .local v2, "legacyActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_3
    const-string/jumbo v3, "action_file_invite_local_edit"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "action_file_invite_online_edit"

    .line 110
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    const-string/jumbo v3, "action_file_invite_online_edit"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_4
    const-string/jumbo v3, "action_folder_acl_view"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
