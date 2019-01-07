.class public Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "DentryAPIImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ltj;
    .param p6, "x6"    # Z

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getEncryptDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->saveOrUpdateEncryptFile2DBImpl(Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .param p2, "x2"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateDentryModifiedTime(Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .param p2, "x2"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateParentDentry(Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->checkFileDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->saveOrUpdate2DBImpl(Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkFileDelete(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1312
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1313
    .local v1, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v3

    invoke-virtual {v3}, Lafy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1314
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .param p5, "extendInfo"    # Ljava/lang/String;
    .param p6, "isAutoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 139
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p3, :cond_1

    .line 141
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 147
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentId(Ljava/lang/String;)V

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 152
    invoke-virtual {v0, p6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAutoRename(Z)V

    .line 153
    invoke-virtual {v0, p5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtend(Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 155
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWifiOnly(Z)V

    .line 157
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fillDentryDetail()V

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method private getDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p3, "wifiOnly"    # Z
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "isAutoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 135
    .local p2, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .param p5, "extendInfo"    # Ljava/lang/String;
    .param p6, "cryptModel"    # Ltj;
    .param p7, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ltj;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p3, :cond_3

    .line 172
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 177
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 178
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentId(Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 181
    invoke-virtual {v0, p7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAutoRename(Z)V

    .line 182
    invoke-virtual {v0, p5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtend(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 184
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWifiOnly(Z)V

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const-string/jumbo v3, "folder"

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 193
    :goto_1
    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCrypt(Z)V

    .line 194
    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptStatus(Z)V

    .line 195
    if-eqz p6, :cond_1

    .line 2056
    iget-object v3, p6, Ltj;->e:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 3048
    iget-object v3, p6, Ltj;->d:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptLocalUrl(Ljava/lang/String;)V

    .line 4024
    iget-object v3, p6, Ltj;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAppId(Ljava/lang/String;)V

    .line 4032
    iget-object v3, p6, Ltj;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCorpId(Ljava/lang/String;)V

    .line 4040
    iget-object v3, p6, Ltj;->c:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setProirity(Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_2
    const-string/jumbo v3, "file"

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-object v1
.end method

.method private getEncryptDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p3, "wifiOnly"    # Z
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "cryptModel"    # Ltj;
    .param p6, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ltj;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    .local p2, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getEncryptDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private saveOrUpdate2DBImpl(Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V
    .locals 11
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/framework/api/ApiResult;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 264
    .local p2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 268
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "dentryExist":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v3, "dentryInserts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 272
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    .line 276
    .local v5, "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v5, :cond_2

    .line 277
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 284
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 285
    .local v2, "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    .end local v2    # "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_4
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 289
    .end local v1    # "dentryExist":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v3    # "dentryInserts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method private saveOrUpdateEncryptFile2DBImpl(Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V
    .locals 11
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/framework/api/ApiResult;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    .local p2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 373
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "dentryExist":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v3, "dentryInserts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 377
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    .line 381
    .local v5, "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v5, :cond_2

    .line 382
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "localModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 389
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    .end local v2    # "dentryInsertResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_4
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v1    # "dentryExist":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v3    # "dentryInserts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateDentryModifiedTime(Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p1, "dentryDatasource"    # Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 996
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 997
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 998
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1001
    .local v0, "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-interface {p1, v0, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 1004
    .end local v0    # "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    return-void
.end method

.method private updateParentDentry(Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 6
    .param p1, "ds"    # Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .param p2, "model"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 124
    .local v1, "parentDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {p1, v0, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 132
    .end local v0    # "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1008
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$20;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1062
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1063
    return-void
.end method

.method public checkDentryExist(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 876
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$17;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$17;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 893
    return-void
.end method

.method public clearAllDentryLocalCache(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1481
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$35;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$35;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V

    .line 1488
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1489
    return-void
.end method

.method public clearAllEncryptDentryLocalCache(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1469
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$34;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$34;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V

    .line 1476
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1477
    return-void
.end method

.method public clearCache()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 798
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/ClearCacheCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/cspace/task/cmmd/ClearCacheCommand;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, "clearCacheCommand":Lcom/alibaba/alimei/cspace/task/cmmd/ClearCacheCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/ClearCacheCommand;->executeCommand()V

    .line 800
    return-void
.end method

.method public clearCache(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 804
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$15;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V

    .line 842
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 843
    return-void
.end method

.method public clearRecycle(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 739
    return-void
.end method

.method public copy(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 6
    .param p1, "srcDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "targetDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "autoRename"    # Z
    .param p4, "autoFixPath"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 485
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V

    .line 486
    .local v0, "copyDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->executeCommand()V

    .line 487
    return-void
.end method

.method public createFolder(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 120
    return-void
.end method

.method public createUploadId(JJ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "size"    # J

    .prologue
    .line 547
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;-><init>(Ljava/lang/String;JJ)V

    .line 548
    .local v0, "uploadIdCommand":Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->executeCommand()V

    .line 549
    return-void
.end method

.method public delete(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "physical"    # Z

    .prologue
    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->delete(Ljava/util/List;Z)V

    .line 469
    return-void
.end method

.method public delete(Ljava/util/List;Z)V
    .locals 2
    .param p2, "physical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 473
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/DeleteDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/DeleteDentryCommand;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 474
    .local v0, "deleteDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/DeleteDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/DeleteDentryCommand;->executeCommand()V

    .line 475
    return-void
.end method

.method public deleteLocalCache(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1270
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$26;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$26;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1300
    return-void
.end method

.method public deleteRpcSuccess(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1137
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$23;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 1166
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1167
    return-void
.end method

.method public download(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 541
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 542
    .local v0, "downloadDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->executeCommand()V

    .line 543
    return-void
.end method

.method public generateDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .param p5, "extendInfo"    # Ljava/lang/String;
    .param p6, "isAutoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public generateDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p3, "wifiOnly"    # Z
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "isAutoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public generateEncryptDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .param p5, "extendInfo"    # Ljava/lang/String;
    .param p6, "cryptModel"    # Ltj;
    .param p7, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ltj;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getEncryptDentryList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public generateEncryptDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p3, "wifiOnly"    # Z
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "cryptModel"    # Ltj;
    .param p6, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ltj;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getEncryptDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSize(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 847
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$16;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$16;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;)V

    .line 871
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 872
    return-void
.end method

.method public getDentryModelLocalPath(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1321
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$27;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$27;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1341
    return-void
.end method

.method public getPreviewDocUrl(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 498
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V

    .line 536
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 537
    return-void
.end method

.method public getSharedFile(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ltk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 565
    .local p3, "listener":Lxv;, "Lxv<Ltk;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ltk;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 626
    return-void
.end method

.method public getSpaceUpdateInfo(Ljava/util/List;Z)V
    .locals 2
    .param p2, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 897
    .local p1, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 898
    .local v0, "spaceUpdateCommand":Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->executeCommand()V

    .line 899
    return-void
.end method

.method public getSpaceUpdateInfo(Ljava/util/List;ZLxv;)V
    .locals 2
    .param p2, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 903
    .local p1, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$18;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$18;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Z)V

    .line 956
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 957
    return-void
.end method

.method public infoRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1067
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$21;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$21;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1085
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1086
    return-void
.end method

.method public listDentryRpcSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILxv;)V
    .locals 10
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldLoadMoreId"    # Ljava/lang/String;
    .param p4, "loadMoreId"    # Ljava/lang/String;
    .param p6, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;I",
            "Lxv",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1215
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p7, "listener":Lxv;, "Lxv<Ltl;>;"
    new-instance v1, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$25;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1265
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ltl;>;"
    move-object/from16 v0, p7

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1266
    return-void
.end method

.method public listDentryRpcSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILxv;)V
    .locals 8
    .param p1, "oldLoadMoreId"    # Ljava/lang/String;
    .param p2, "loadMoreId"    # Ljava/lang/String;
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;I",
            "Lxv",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p5, "listener":Lxv;, "Lxv<Ltl;>;"
    const/4 v1, 0x0

    .line 1210
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->listDentryRpcSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILxv;)V

    .line 1211
    return-void
.end method

.method public loadMoreByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "loadMoreId"    # Ljava/lang/String;
    .param p4, "loadFromLocal"    # Z
    .param p5, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 636
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 637
    .local v0, "loadMoreDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->executeCommand()V

    .line 638
    return-void
.end method

.method public previewDoc(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 491
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/PreviewDocCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/PreviewDocCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 492
    .local v0, "previewDocCommand":Lcom/alibaba/alimei/cspace/task/cmmd/PreviewDocCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/PreviewDocCommand;->executeCommand()V

    .line 493
    return-void
.end method

.method public queryDentryModelBySpaceIdAndFileId(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "spaceID"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1369
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$29;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$29;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1378
    return-void
.end method

.method public varargs queryLocalDentrys(Ljava/lang/String;Ljava/lang/String;IZLxv;[Ljava/lang/String;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "sortType"    # I
    .param p4, "includeDirty"    # Z
    .param p6, "excudePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 754
    .local p5, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$12;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 763
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 764
    return-void
.end method

.method public queryLocalDentrys(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "includeDirty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 749
    .local p4, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->queryLocalDentrys(Ljava/lang/String;Ljava/lang/String;IZLxv;[Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "localUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1425
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$32;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$32;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1434
    return-void
.end method

.method public varargs queryLocalFolderDentrys(Ljava/lang/String;Ljava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "excludePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 769
    .local p3, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$13;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 778
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 779
    return-void
.end method

.method public rename(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "autoRename"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 442
    .local v0, "repathCommand":Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->executeCommand()V

    .line 443
    return-void
.end method

.method public renameRpcSuccess(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
    .locals 2
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 961
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$19;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$19;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V

    .line 992
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 993
    return-void
.end method

.method public repath(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "autoRename"    # Z

    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->repath(Ljava/util/List;Ljava/lang/String;Z)V

    .line 462
    return-void
.end method

.method public repath(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 447
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 448
    .local v0, "repathCommand":Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->executeCommand()V

    .line 449
    return-void
.end method

.method public restore(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "autoReName"    # Z
    .param p3, "autoFixPath"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 479
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V

    .line 480
    .local v0, "restoreDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;->executeCommand()V

    .line 481
    return-void
.end method

.method public rollbackFile(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 734
    return-void
.end method

.method public saveDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "autoRename"    # Z
    .param p5, "overWrite"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 433
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 434
    .local v0, "command":Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->executeCommand()V

    .line 435
    return-void
.end method

.method public saveFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLxv;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "extentInfo"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$2;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$2;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 220
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 221
    return-void
.end method

.method public saveFile2DB(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 225
    .local p1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$3;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$3;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 233
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 234
    return-void
.end method

.method public saveOrUpdateEncryptFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLtj;Lxv;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "extendInfo"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .param p5, "cryptModel"    # Ltj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ltj;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 343
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;)V

    .line 352
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 353
    return-void
.end method

.method public saveOrUpdateEncryptFile2DB(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 357
    .local p1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$8;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$8;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 365
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 366
    return-void
.end method

.method public saveOrUpdateFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLxv;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "extendInfo"    # Ljava/lang/String;
    .param p4, "wifiOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 238
    .local p3, "pathUrlKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$4;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 247
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 248
    return-void
.end method

.method public saveOrUpdateFile2DB(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 252
    .local p1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$5;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$5;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 260
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 261
    return-void
.end method

.method public saveOrUpdateFile2DB(Ljava/util/List;ZLxv;)V
    .locals 2
    .param p2, "forceCreateNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 295
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$6;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Z)V

    .line 338
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 339
    return-void
.end method

.method public searchDentry(Ljava/lang/String;Ljava/util/List;IILxv;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 645
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p4

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$11;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    .line 723
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 724
    return-void
.end method

.method public searchDentry(Ljava/lang/String;Ljava/util/List;ILxv;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 728
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->searchDentry(Ljava/lang/String;Ljava/util/List;IILxv;)V

    .line 729
    return-void
.end method

.method public searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILjava/lang/String;Lxv;)V
    .locals 15
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .param p5, "orgId"    # J
    .param p7, "searchType"    # I
    .param p8, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJI",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1181
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v3, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p3

    move-object/from16 v9, p2

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JILjava/lang/String;)V

    .line 1205
    .local v3, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    move-object/from16 v0, p9

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1206
    return-void
.end method

.method public searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILxv;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .param p5, "orgId"    # J
    .param p7, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJI",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1176
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILjava/lang/String;Lxv;)V

    .line 1177
    return-void
.end method

.method public searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IILxv;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1171
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILxv;)V

    .line 1172
    return-void
.end method

.method public showSharedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 559
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/ShowSharedCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/ShowSharedCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v0, "showSharedCommand":Lcom/alibaba/alimei/cspace/task/cmmd/ShowSharedCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/ShowSharedCommand;->executeCommand()V

    .line 561
    return-void
.end method

.method public syncByPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 630
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SyncDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/SyncDentryCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v0, "syncDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/SyncDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SyncDentryCommand;->executeCommand()V

    .line 632
    return-void
.end method

.method public syncRecycles(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 744
    return-void
.end method

.method public transfer(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8
    .param p2, "targetSpaceId"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "isCut"    # Z
    .param p5, "autoRename"    # Z
    .param p6, "overWrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 453
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 454
    .local v0, "transferDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->executeCommand()V

    .line 455
    return-void
.end method

.method public transferRpcSuccess(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Lxv;)V
    .locals 7
    .param p3, "isCut"    # Z
    .param p4, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1090
    .local p1, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "targetList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$22;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$22;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 1132
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1133
    return-void
.end method

.method public update2Server(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->update2Server(Ljava/util/List;)V

    .line 423
    return-void
.end method

.method public update2Server(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 427
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateDentryCommand;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 428
    .local v0, "createDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/CreateDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateDentryCommand;->executeCommand()V

    .line 429
    return-void
.end method

.method public updateConflictType(Ljava/util/List;ZLxv;)V
    .locals 2
    .param p2, "isOverride"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1394
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$31;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1420
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1421
    return-void
.end method

.method public updateDentryModelInfo(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->infoRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V

    .line 1365
    return-void
.end method

.method public updateDentryModelLastCommentId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "lastCommentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1345
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$28;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$28;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1360
    return-void
.end method

.method public updateDownloadInfo(JLjava/lang/String;J)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "localUrl"    # Ljava/lang/String;
    .param p4, "downloadedSize"    # J

    .prologue
    .line 783
    new-instance v1, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;JJLjava/lang/String;)V

    .line 793
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 794
    return-void
.end method

.method public updateThumbnailsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIJLxv;)V
    .locals 17
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "authMediaId"    # Ljava/lang/String;
    .param p5, "authCode"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "rotation"    # I
    .param p11, "dataSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIIIJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p13, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v2, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-wide/from16 v15, p11

    invoke-direct/range {v2 .. v16}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIJ)V

    .line 1464
    .local v2, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1465
    return-void
.end method

.method public updateUploadedSizeAndUrl(JJLjava/lang/String;Lxv;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "uploadedSize"    # J
    .param p5, "tempUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1382
    .local p6, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;JJLjava/lang/String;)V

    .line 1389
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1390
    return-void
.end method

.method public upload(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 553
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 554
    .local v0, "uploadDentryCommand":Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->executeCommand()V

    .line 555
    return-void
.end method
