.class public Lcom/alibaba/alimei/contact/ContactSDK;
.super Ljava/lang/Object;
.source "ContactSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/api/ContactApi;

    return-object v0
.end method

.method public static getVoipApi(Ljava/lang/String;)Lsu;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lsv;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lsu;

    return-object v0
.end method
