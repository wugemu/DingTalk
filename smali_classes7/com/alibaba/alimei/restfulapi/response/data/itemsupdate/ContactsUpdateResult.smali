.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
.super Ljava/lang/Object;
.source "ContactsUpdateResult.java"


# instance fields
.field private contactsResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getContactsResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->contactsResult:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->resultCode:I

    return v0
.end method

.method public setContactsResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "contactsResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->contactsResult:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->resultCode:I

    .line 19
    return-void
.end method
