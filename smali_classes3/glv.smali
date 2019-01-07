.class public Lglv;
.super Ljava/lang/Object;
.source "PersonalFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglv$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static a(Lglv$a;)Ljava/util/List;
    .locals 6
    .param p0, "param"    # Lglv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglv$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    iget-object v0, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 25
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1023
    :cond_2
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 30
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p0, Lglv$a;->b:Z

    .line 31
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 32
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 33
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 34
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 35
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_local_edit"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 36
    invoke-static {v2}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 37
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 38
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_share_as_link"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 39
    invoke-static {v2}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 40
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p0, Lglv$a;->d:J

    iget-object v4, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p0, Lglv$a;->e:Z

    .line 41
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 42
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 43
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 44
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p0, Lglv$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 45
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 1038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0
.end method
