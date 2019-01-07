.class public Lcom/alibaba/alimei/adpater/display/CommonFolderDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
.source "CommonFolderDisplayer.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getFolderApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p1}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    return-object v0
.end method
