.class public Lcom/alibaba/alimei/mail/operation/model/result/OpsFolderResultModel;
.super Ljava/lang/Object;
.source "OpsFolderResultModel.java"


# instance fields
.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsFolderResultModel;->result:Ljava/util/List;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsFolderResultModel;->result:Ljava/util/List;

    .line 23
    return-void
.end method
