.class final Lajj$5;
.super Ljava/lang/Object;
.source "CMailSettingsUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lajj$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 302
    const-string/jumbo v0, "CMailSettingsUtil"

    const-string/jumbo v1, " getFoldersPushSettings: "

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 250
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    .line 1253
    if-nez p1, :cond_0

    .line 1254
    const-string/jumbo v0, "CMailSettingsUtil"

    const-string/jumbo v1, " getFoldersPushSettings:"

    const-string/jumbo v2, " result null"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lajj$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    new-instance v1, Lajj$5$1;

    invoke-direct {v1, p0, p1}, Lajj$5$1;-><init>(Lajj$5;Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllMailPushableFolders(Lxv;)V

    .line 1298
    iget-object v0, p0, Lajj$5;->a:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->accountSwitch:Z

    invoke-static {v0, v1}, Lajj;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
