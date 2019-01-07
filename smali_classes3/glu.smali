.class public Lglu;
.super Ljava/lang/Object;
.source "GroupFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglu$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method final a(Lglu$a;)Ljava/util/List;
    .locals 8
    .param p1, "param"    # Lglu$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglu$a;",
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-eqz p1, :cond_0

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 28
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 30
    :cond_1
    iget-boolean v0, p1, Lglu$a;->g:Z

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    iget-boolean v0, p1, Lglu$a;->h:Z

    if-eqz v0, :cond_2

    .line 2023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 1057
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglu$a;->b:Z

    .line 1058
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1059
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1060
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1061
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 1062
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 1063
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1064
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1065
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1066
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1067
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 3023
    :cond_2
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 2075
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglu$a;->b:Z

    .line 2076
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2077
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2078
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2079
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 2080
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 2081
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_rename"

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2082
    invoke-static {v0}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_re_path"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2083
    invoke-static {v4}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2084
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2085
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 3038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2082
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2083
    goto :goto_2

    .line 36
    :cond_5
    iget-boolean v0, p1, Lglu$a;->h:Z

    if-eqz v0, :cond_6

    .line 4023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 3093
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglu$a;->b:Z

    .line 3094
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3095
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3096
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3097
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3098
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 3099
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 3100
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3101
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3102
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3103
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3104
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 4038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 5023
    :cond_6
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 4112
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglu$a;->b:Z

    .line 4113
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4114
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_online_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4115
    invoke-static {v4}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_online_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4116
    invoke-static {v4}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4117
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 4118
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 4119
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_rename"

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4120
    invoke-static {v0}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_re_path"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4121
    invoke-static {v4}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4122
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4123
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 5038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 4120
    goto :goto_3

    :cond_8
    move v1, v2

    .line 4121
    goto :goto_4

    .line 41
    :cond_9
    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    iget-boolean v0, p1, Lglu$a;->h:Z

    if-eqz v0, :cond_a

    .line 6023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 5131
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglu$a;->b:Z

    .line 5132
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5133
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5134
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5135
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5136
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5137
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5138
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 5139
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 5140
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p1, Lglu$a;->d:J

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p1, Lglu$a;->e:Z

    .line 5141
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5142
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5143
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5144
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5145
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 6038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 7023
    :cond_a
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 6153
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglu$a;->b:Z

    .line 6154
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6155
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6156
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6157
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_online_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6158
    invoke-static {v4}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6159
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_assistant"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6160
    invoke-static {v4}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 6161
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 6162
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lglu$a;->d:J

    iget-object v6, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lglu$a;->e:Z

    .line 6163
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_rename"

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6164
    invoke-static {v0}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {v3, v4, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_re_path"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6165
    invoke-static {v4}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_6
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6166
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6167
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 7038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 6164
    goto :goto_5

    :cond_c
    move v1, v2

    .line 6165
    goto :goto_6

    .line 46
    :cond_d
    iget-boolean v0, p1, Lglu$a;->h:Z

    if-eqz v0, :cond_e

    .line 8023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 7175
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglu$a;->b:Z

    .line 7176
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7177
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7178
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7179
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7180
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_local_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7181
    invoke-static {v2}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7182
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_local_edit"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7183
    invoke-static {v2}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7184
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7185
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_share_as_link"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7186
    invoke-static {v2}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7187
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 7188
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglu$a;->d:J

    .line 7189
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p1, Lglu$a;->d:J

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p1, Lglu$a;->e:Z

    .line 7190
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7191
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7192
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7193
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7194
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7195
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 8038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 9023
    :cond_e
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 8203
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglu$a;->b:Z

    .line 8204
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8205
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8206
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8207
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_online_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8208
    invoke-static {v4}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_local_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8209
    invoke-static {v4}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_online_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8210
    invoke-static {v4}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_local_edit"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8211
    invoke-static {v4}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8212
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_assistant"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8213
    invoke-static {v4}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_share_as_link"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8214
    invoke-static {v4}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_as_email"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8215
    invoke-static {v4}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 8216
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglu$a;->d:J

    .line 8217
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lglu$a;->d:J

    iget-object v6, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lglu$a;->e:Z

    .line 8218
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_rename"

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8219
    invoke-static {v0}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    invoke-virtual {v3, v4, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_re_path"

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8220
    invoke-static {v4}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_8
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8221
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8222
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglu$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 8223
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 9038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 8219
    goto :goto_7

    :cond_10
    move v1, v2

    .line 8220
    goto :goto_8
.end method
