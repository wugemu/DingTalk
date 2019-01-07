.class final Lgpe$1;
.super Ljava/lang/Object;
.source "UploadProxy.java"

# interfaces
.implements Lgpd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpe;->a(Lgpa;Lgpe$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpe$b;

.field final synthetic b:Lgpe;


# direct methods
.method constructor <init>(Lgpe;Lgpe$b;)V
    .locals 0
    .param p1, "this$0"    # Lgpe;

    .prologue
    .line 133
    iput-object p1, p0, Lgpe$1;->b:Lgpe;

    iput-object p2, p0, Lgpe$1;->a:Lgpe$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 145
    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 146
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 147
    iget-object v0, p0, Lgpe$1;->a:Lgpe$b;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 147
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-interface {v0, v2, v3, p2}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 149
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "totalSize"    # J
    .param p5, "progressSize"    # J

    .prologue
    .line 136
    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 137
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "info":Ljava/lang/Object;
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 140
    :cond_0
    iget-object v1, p0, Lgpe$1;->a:Lgpe$b;

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v4, p3

    move-wide v6, p5

    .line 140
    invoke-interface/range {v1 .. v7}, Lgpe$b;->a(JJJ)V

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 153
    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 154
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 155
    iget-object v0, p0, Lgpe$1;->a:Lgpe$b;

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 155
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v1, p3, p4}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v1

    invoke-interface {v0, v2, v3, p2, v1}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 161
    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 162
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 163
    iget-object v0, p0, Lgpe$1;->a:Lgpe$b;

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 163
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "info":Ljava/lang/Object;
    new-instance v1, Lggs;

    const-string/jumbo v4, "5000002"

    .line 164
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lfzs$h;->dt_space_upload_error_cancel:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lggs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v2, v3, p2, v1}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V

    .line 166
    :cond_0
    return-void
.end method
