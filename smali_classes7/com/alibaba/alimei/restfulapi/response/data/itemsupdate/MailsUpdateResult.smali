.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
.super Ljava/lang/Object;
.source "MailsUpdateResult.java"


# instance fields
.field private mailResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
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
.method public getMailResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->mailResults:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->resultCode:I

    return v0
.end method

.method public setMailResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "mailResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->mailResults:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->resultCode:I

    .line 19
    return-void
.end method
