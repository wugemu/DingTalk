.class public Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
.super Ljava/lang/Object;
.source "FolderCanModifyResult.java"


# instance fields
.field public canModify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanModifyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;->canModify:Ljava/util/List;

    return-object v0
.end method

.method public setModifies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;->canModify:Ljava/util/List;

    .line 16
    return-void
.end method
