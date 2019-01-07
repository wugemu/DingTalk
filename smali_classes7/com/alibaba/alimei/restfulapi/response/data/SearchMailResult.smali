.class public Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;
.super Ljava/lang/Object;
.source "SearchMailResult.java"


# instance fields
.field private mailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getMailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->mailList:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->total:I

    return v0
.end method

.method public setMailList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->mailList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->total:I

    .line 28
    return-void
.end method
