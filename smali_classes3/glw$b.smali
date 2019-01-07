.class final Lglw$b;
.super Ljava/lang/Object;
.source "PublicAreaFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lglw$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lglw$c;)Ljava/util/List;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    iget-boolean v0, p1, Lglw$c;->g:Z

    if-eqz v0, :cond_1

    .line 161
    iget-boolean v0, p1, Lglw$c;->h:Z

    if-eqz v0, :cond_0

    .line 2023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 1226
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglw$c;->b:Z

    .line 1227
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1228
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1229
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1230
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 1231
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 1232
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1233
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1234
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1235
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1236
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    .line 167
    :goto_0
    return-object v0

    .line 3023
    :cond_0
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 2244
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglw$c;->b:Z

    .line 2245
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2246
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2247
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 2248
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 2249
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2250
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 3038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto :goto_0

    .line 165
    :cond_1
    iget-boolean v0, p1, Lglw$c;->h:Z

    if-eqz v0, :cond_2

    .line 4023
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 3175
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglw$c;->b:Z

    .line 3176
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3177
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3178
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3179
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3180
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_local_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3181
    invoke-static {v2}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3182
    invoke-static {v2}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_invite_local_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3183
    invoke-static {v2}, Lglr;->k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3184
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3185
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_share_as_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3186
    invoke-static {v2}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3187
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 3188
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 3189
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p1, Lglw$c;->d:J

    iget-object v4, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p1, Lglw$c;->e:Z

    .line 3190
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_rename"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3191
    invoke-static {v2}, Lglr;->l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_re_path"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3192
    invoke-static {v2}, Lglr;->m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3193
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_delete"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3194
    invoke-static {v2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3195
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 4038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 5023
    :cond_2
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 4203
    const-string/jumbo v1, "action_file_release_edit_lock"

    iget-boolean v2, p1, Lglw$c;->b:Z

    .line 4204
    invoke-static {v2}, Lglr;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_history"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4205
    invoke-static {v2}, Lglr;->n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_download"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4206
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4207
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_online_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4208
    invoke-static {v2}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_local_edit"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4209
    invoke-static {v2}, Lglr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4210
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4211
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_share_as_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4212
    invoke-static {v2}, Lglr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4213
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 4214
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p1, Lglw$c;->d:J

    .line 4215
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p1, Lglw$c;->d:J

    iget-object v4, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p1, Lglw$c;->e:Z

    .line 4216
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4217
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_file_link"

    iget-object v2, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4218
    invoke-static {v2}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 5038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0
.end method
