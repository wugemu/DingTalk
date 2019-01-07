.class public Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;
.super Ljava/lang/Object;
.source "MailSearchResult.java"


# instance fields
.field private mailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->mailList:Ljava/util/List;

    return-object v0
.end method

.method public setMailList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->mailList:Ljava/util/List;

    .line 19
    return-void
.end method
