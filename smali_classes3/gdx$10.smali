.class final Lgdx$10;
.super Lgoi;
.source "DentryListUploadUseCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdx;


# direct methods
.method constructor <init>(Lgdx;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 258
    iput-object p1, p0, Lgdx$10;->a:Lgdx;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 261
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-super {p0, p1}, Lgoi;->a(Ljava/util/List;)V

    .line 262
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 266
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    .line 269
    iget-object v2, p0, Lgdx$10;->a:Lgdx;

    .line 1055
    iget-object v2, v2, Lgdx;->a:Lgdw;

    .line 269
    invoke-virtual {v2}, Lgdw;->x()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    .end local v0    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    invoke-static {}, Lglr;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    iget-object v2, p0, Lgdx$10;->a:Lgdx;

    .line 2282
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    new-instance v1, Lgdx$11;

    invoke-direct {v1, v2, p1}, Lgdx$11;-><init>(Lgdx;Ljava/util/List;)V

    .line 2340
    const-class v3, Lcma;

    iget-object v4, v2, Lgdx;->b:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2341
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v3, v2, Lgdx;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->v()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lgdx;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p1, v1}, Lgpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 274
    :cond_4
    iget-object v1, p0, Lgdx$10;->a:Lgdx;

    invoke-static {v1, p1}, Lgdx;->a(Lgdx;Ljava/util/List;)V

    goto :goto_0
.end method
