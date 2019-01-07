.class public final Lgdz;
.super Lgdw;
.source "GroupFileDentryListPresenter.java"


# direct methods
.method protected constructor <init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Lgdu$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0}, Lgdz;->b()V

    .line 34
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    iget-boolean v1, p0, Lgdz;->o:Z

    invoke-interface {v0, v1}, Lgdu$b;->a(Z)V

    .line 35
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->b(Z)V

    .line 36
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    iget v1, p0, Lgdz;->q:I

    invoke-interface {v0, v1}, Lgdu$b;->a(I)V

    .line 37
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 39
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->l(Z)V

    .line 40
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgdu$b;->m(Z)V

    .line 41
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    iget-object v3, p0, Lgdz;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgdu$b;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->e(Z)V

    .line 47
    iget-object v3, p0, Lgdz;->c:Lgdu$b;

    iget-boolean v0, p0, Lgdz;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdz;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgpv;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget v4, Lfzs$h;->and_setting_rights:I

    .line 48
    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-interface {v3, v0, v4}, Lgdu$b;->a(ZLjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->h(Z)V

    .line 50
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->i(Z)V

    .line 51
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    iget v3, p0, Lgdz;->s:I

    invoke-interface {v0, v3}, Lgdu$b;->b(I)V

    .line 52
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->j(Z)V

    .line 53
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    iget v1, p0, Lgdz;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 54
    iget-object v0, p0, Lgdz;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->k(Z)V

    .line 55
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0
.end method

.method public final d()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    iget-boolean v0, p0, Lgdz;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdz;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgpv;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "space_orgfile_chatfile_setting_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    .line 67
    .local v6, "spaceOrgCache":Lfzv;
    new-instance v1, Lgiy;

    invoke-direct {v1}, Lgiy;-><init>()V

    .line 68
    .local v1, "model":Lgiy;
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    iget-object v2, p0, Lgdz;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgle;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgiy;->d:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lgiy;->f:Ljava/util/Map;

    .line 70
    iget-object v2, v1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "doc_readonly"

    iget-object v0, p0, Lgdz;->j:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, v1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "watermark"

    iget-object v0, p0, Lgdz;->j:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lfzv;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1"

    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lgdz;->d:Landroid/content/Context;

    iget-object v2, p0, Lgdz;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iget-object v4, p0, Lgdz;->j:Ljava/lang/String;

    .line 1109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 74
    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Lgiy;JJ)V

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 72
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2
.end method
