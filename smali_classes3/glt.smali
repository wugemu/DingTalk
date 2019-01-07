.class public Lglt;
.super Ljava/lang/Object;
.source "DefaultFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglt$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static a(Lglr$d;)Ljava/util/List;
    .locals 6
    .param p0, "param"    # Lglr$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglr$d;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    iget-object v0, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 22
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 1023
    :cond_1
    new-instance v0, Lglp;

    invoke-direct {v0}, Lglp;-><init>()V

    .line 24
    const-string/jumbo v1, "action_file_download"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 25
    invoke-static {v2}, Lglr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_open"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 26
    invoke-static {v2}, Lglr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_contact"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 27
    invoke-static {v2}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_comment"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p0, Lglr$d;->d:J

    .line 28
    invoke-static {v2, v4, v5}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_to_assistant"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 29
    invoke-static {v2}, Lglr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_send_as_email"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 30
    invoke-static {v2}, Lglr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_like"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p0, Lglr$d;->d:J

    .line 31
    invoke-static {v2, v4, v5}, Lglr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_print"

    iget-wide v2, p0, Lglr$d;->d:J

    iget-object v4, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v5, p0, Lglr$d;->e:Z

    .line 32
    invoke-static {v2, v3, v4, v5}, Lglr;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    const-string/jumbo v1, "action_file_save_to_ding_drive"

    iget-object v2, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 33
    invoke-static {v2}, Lglr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lglp;->a(Ljava/lang/String;Z)Lglp;

    move-result-object v0

    .line 1038
    iget-object v0, v0, Lglp;->a:Ljava/util/List;

    goto/16 :goto_0
.end method
