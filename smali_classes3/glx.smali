.class public Lglx;
.super Ljava/lang/Object;
.source "SingleChatFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglx$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method final a(Lglx$a;)Ljava/util/List;
    .locals 8
    .param p1, "param"    # Lglx$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglx$a;",
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_0

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_1

    .line 24
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_1
    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2023
    new-instance v2, Lglp;

    invoke-direct {v2}, Lglp;-><init>()V

    .line 1035
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglx$a;->b:Z

    .line 1036
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1037
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1038
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1039
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1040
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglx$a;->d:J

    .line 1041
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglx$a;->d:J

    .line 1042
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lglx$a;->d:J

    iget-object v6, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lglx$a;->e:Z

    .line 1043
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_rename"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1044
    invoke-static {v4}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1045
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1046
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 1044
    goto :goto_1

    .line 3023
    :cond_3
    new-instance v2, Lglp;

    invoke-direct {v2}, Lglp;-><init>()V

    .line 2054
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lglx$a;->b:Z

    .line 2055
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2056
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2057
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2058
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_online_edit"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2059
    invoke-static {v4}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_local_edit"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2060
    invoke-static {v4}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2061
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_send_to_assistant"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2062
    invoke-static {v4}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_share_as_link"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2063
    invoke-static {v4}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_send_as_email"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2064
    invoke-static {v4}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglx$a;->d:J

    .line 2065
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lglx$a;->d:J

    .line 2066
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lglx$a;->d:J

    iget-object v6, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lglx$a;->e:Z

    .line 2067
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v2

    const-string/jumbo v3, "action_file_rename"

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2068
    invoke-static {v4}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v2, v3, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2069
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2070
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_link_open_parent_folder"

    iget-object v2, p1, Lglx$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2071
    invoke-static {v2}, Lglr;->p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 3038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 2068
    goto :goto_2
.end method
