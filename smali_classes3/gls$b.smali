.class final Lgls$b;
.super Ljava/lang/Object;
.source "CooperationFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lgls$b;-><init>()V

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget v0, p1, Lgls$c;->h:I

    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2023
    :sswitch_0
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 1161
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lgls$c;->b:Z

    .line 1162
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1163
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1164
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1165
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1166
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_local_edit"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1167
    invoke-static {v2}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1168
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_local_edit"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1169
    invoke-static {v2}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1170
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1171
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1172
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lgls$c;->d:J

    .line 1173
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lgls$c;->d:J

    .line 1174
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p1, Lgls$c;->d:J

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p1, Lgls$c;->e:Z

    .line 1175
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1176
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1177
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1178
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1179
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1180
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 3023
    :sswitch_1
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 2188
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lgls$c;->b:Z

    .line 2189
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2190
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2191
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2192
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_online_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2193
    invoke-static {v4}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_local_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2194
    invoke-static {v4}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_online_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2195
    invoke-static {v4}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_local_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2196
    invoke-static {v4}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2197
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_assistant"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2198
    invoke-static {v4}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_as_email"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2199
    invoke-static {v4}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 2200
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 2201
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lgls$c;->d:J

    iget-object v6, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lgls$c;->e:Z

    .line 2202
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v3

    const-string/jumbo v4, "action_file_rename"

    iget-object v0, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2203
    invoke-static {v0}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_re_path"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2204
    invoke-static {v4}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2205
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2206
    invoke-static {v2}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2207
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 3038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_0
    move v0, v2

    .line 2203
    goto :goto_1

    :cond_1
    move v1, v2

    .line 2204
    goto :goto_2

    .line 4023
    :sswitch_2
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 3215
    const-string/jumbo v3, "action_file_release_edit_lock"

    iget-boolean v4, p1, Lgls$c;->b:Z

    .line 3216
    invoke-static {v4}, Lglr;->a(Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_history"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3217
    invoke-static {v4}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_download"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3218
    invoke-static {v4}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_open"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3219
    invoke-static {v4}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_online_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3220
    invoke-static {v4}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_local_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3221
    invoke-static {v4}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_online_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3222
    invoke-static {v4}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_invite_local_edit"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3223
    invoke-static {v4}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_contact"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3224
    invoke-static {v4}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_to_assistant"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3225
    invoke-static {v4}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_send_as_email"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3226
    invoke-static {v4}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_like"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 3227
    invoke-static {v4, v6, v7}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_comment"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p1, Lgls$c;->d:J

    .line 3228
    invoke-static {v4, v6, v7}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_print"

    iget-wide v4, p1, Lgls$c;->d:J

    iget-object v6, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v7, p1, Lgls$c;->e:Z

    .line 3229
    invoke-static {v4, v5, v6, v7}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_save_to_ding_drive"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3230
    invoke-static {v4}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v3, "action_file_delete"

    iget-object v4, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4435
    invoke-static {v4}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3231
    :goto_3
    invoke-virtual {v0, v3, v1}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3232
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 5038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 4435
    goto :goto_3

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
    .end sparse-switch
.end method
