.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;
.source "SingleContactUpdateResult.java"


# instance fields
.field private folderType:I

.field private nameInJianpin:Ljava/lang/String;

.field private nameInPinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getFolderType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->folderType:I

    return v0
.end method

.method public getNameInJianpin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->nameInJianpin:Ljava/lang/String;

    return-object v0
.end method

.method public getNameInPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->nameInPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderType(I)V
    .locals 0
    .param p1, "folderType"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->folderType:I

    .line 23
    return-void
.end method

.method public setNameInJianpin(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameInJianpin"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->nameInJianpin:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNameInPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameInPinyin"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->nameInPinyin:Ljava/lang/String;

    .line 35
    return-void
.end method
