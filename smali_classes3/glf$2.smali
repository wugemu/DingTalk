.class public final Lglf$2;
.super Ljava/lang/Object;
.source "CryptFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcma;

.field final synthetic c:Lglf;


# direct methods
.method public constructor <init>(Lglf;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lglf;

    .prologue
    .line 85
    iput-object p1, p0, Lglf$2;->c:Lglf;

    iput-object p2, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lglf$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 88
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    :cond_0
    iget-object v5, p0, Lglf$2;->b:Lcma;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "file not exist"

    invoke-interface {v5, v6, v7}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v5, p0, Lglf$2;->c:Lglf;

    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1028
    invoke-static {v6, v5}, Lglf;->a(ZLcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "destUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    iget-object v5, p0, Lglf$2;->b:Lcma;

    const-string/jumbo v6, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lfzs$h;->and_sdcard_unavailable:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "CryptFileManager"

    const-string/jumbo v7, "sdcard is unable"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v7, v5, v2}, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->fileId:Ljava/lang/String;

    .line 103
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getProirity()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    .line 104
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    .line 105
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->creatorId:Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z

    move-result v4

    .line 109
    .local v4, "success":Z
    if-eqz v4, :cond_3

    .line 110
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    .line 111
    .local v1, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v1, v6, v7, v2}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateCryptLocalUrl(JLjava/lang/String;)Z

    .line 112
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-interface {v1, v6, v7, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateCryptStatus(JZ)Z

    .line 113
    iget-object v5, p0, Lglf$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->removeLocalUrl(J)Z

    .line 120
    .end local v1    # "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    :goto_1
    iget-object v5, p0, Lglf$2;->b:Lcma;

    invoke-interface {v5, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 121
    .end local v4    # "success":Z
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    iget-object v5, p0, Lglf$2;->b:Lcma;

    const-string/jumbo v6, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lfzs$h;->dt_file_decrypt_error_common:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "success":Z
    :cond_3
    :try_start_1
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "CryptFileManager"

    const-string/jumbo v7, "decrypt"

    iget v8, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file decrypt error"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
