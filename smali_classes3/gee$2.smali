.class final Lgee$2;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee;


# direct methods
.method constructor <init>(Lgee;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 244
    iput-object p1, p0, Lgee$2;->a:Lgee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 270
    .local p1, "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string/jumbo v0, "updateDentryList"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgee$2$1;

    invoke-direct {v1, p0, p1}, Lgee$2$1;-><init>(Lgee$2;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgee$2;->a:Lgee;

    .line 2054
    iget-object v2, v2, Lgee;->g:Ljava/lang/String;

    .line 398
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    iget-object v2, p0, Lgee$2;->a:Lgee;

    .line 3054
    iget-object v2, v2, Lgee;->g:Ljava/lang/String;

    .line 401
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    const/4 v1, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 407
    :cond_3
    iget-object v2, p0, Lgee$2;->a:Lgee;

    .line 4054
    iget-object v2, v2, Lgee;->g:Ljava/lang/String;

    .line 407
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgee$2;->a:Lgee;

    .line 5054
    iget-object v2, v2, Lgee;->g:Ljava/lang/String;

    .line 408
    iget-object v3, p0, Lgee$2;->a:Lgee;

    .line 6054
    iget-object v3, v3, Lgee;->g:Ljava/lang/String;

    .line 408
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "folderPath":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 408
    .end local v0    # "folderPath":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lgee$2;->a:Lgee;

    .line 7054
    iget-object v0, v1, Lgee;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 4
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 247
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    if-nez v1, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 251
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    .line 252
    .local v0, "dentryGroup":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getChangeReason()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getUpdateDentrys()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lgee$2;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getAddDentrys()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lgee$2;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->getDeleteDentrys()Ljava/util/Map;

    move-result-object v1

    .line 1349
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1352
    const-string/jumbo v2, "deleteDentryList"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lgee$2$3;

    invoke-direct {v3, p0, v1}, Lgee$2$3;-><init>(Lgee$2;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
