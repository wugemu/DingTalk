.class public Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryVersionDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "DentryVersionDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/cspace/db/datasource/IDentryVersionDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getCSpaceDataBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
