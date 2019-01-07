.class public Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;
.super Ljava/lang/Object;
.source "ContactDatasource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    return-object v0
.end method
