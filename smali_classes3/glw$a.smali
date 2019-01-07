.class final Lglw$a;
.super Ljava/lang/Object;
.source "PublicAreaFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lglw$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lglw$c;)Ljava/util/List;
    .locals 8
    .param p1, "param"    # Lglw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglw$c;",
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
    .line 90
    if-eqz p1, :cond_0

    iget-object v3, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v3, :cond_2

    .line 91
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v1

    .line 114
    :cond_1
    :goto_0
    return-object v1

    .line 1118
    :cond_2
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    iget-object v4, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglw$c;->d:J

    iget-boolean v5, p1, Lglw$c;->e:Z

    invoke-virtual {v3, v4, v6, v7, v5}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "aclActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p1, Lglw$c;->g:Z

    if-eqz v3, :cond_5

    .line 2023
    new-instance v3, Lglp;

    invoke-direct {v3}, Lglp;-><init>()V

    .line 1125
    const-string/jumbo v4, "action_file_release_edit_lock"

    iget-boolean v5, p1, Lglw$c;->b:Z

    .line 1126
    invoke-static {v5}, Lglr;->a(Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_online_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1127
    invoke-static {v5}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_online_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1128
    invoke-static {v5}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_local_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1129
    invoke-static {v5}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_like"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglw$c;->d:J

    .line 1130
    invoke-static {v5, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_comment"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglw$c;->d:J

    .line 1131
    invoke-static {v5, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_send_file_link"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1132
    invoke-static {v5}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    .line 2038
    iget-object v2, v3, Lglp;->a:Ljava/util/List;

    .line 100
    .local v2, "legacyActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_4
    const-string/jumbo v3, "action_file_invite_local_edit"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "action_file_invite_online_edit"

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string/jumbo v3, "action_file_invite_online_edit"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3023
    .end local v1    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "legacyActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v3, Lglp;

    invoke-direct {v3}, Lglp;-><init>()V

    .line 2140
    const-string/jumbo v4, "action_file_release_edit_lock"

    iget-boolean v5, p1, Lglw$c;->b:Z

    .line 2141
    invoke-static {v5}, Lglr;->a(Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_online_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2142
    invoke-static {v5}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_local_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2143
    invoke-static {v5}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_online_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2144
    invoke-static {v5}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_invite_local_edit"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2145
    invoke-static {v5}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_send_to_assistant"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2146
    invoke-static {v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_like"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglw$c;->d:J

    .line 2147
    invoke-static {v5, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_comment"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglw$c;->d:J

    .line 2148
    invoke-static {v5, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_save_to_ding_drive"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2149
    invoke-static {v5}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_send_file_link"

    iget-object v5, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2150
    invoke-static {v5}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    .line 3038
    iget-object v2, v3, Lglp;->a:Ljava/util/List;

    goto/16 :goto_1
.end method
