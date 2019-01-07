.class public Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;
.super Ljava/lang/Object;
.source "SearchContactResult.java"


# instance fields
.field private contactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->contactList:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->total:I

    return v0
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/SearchContactItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->contactList:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;->total:I

    .line 39
    return-void
.end method
