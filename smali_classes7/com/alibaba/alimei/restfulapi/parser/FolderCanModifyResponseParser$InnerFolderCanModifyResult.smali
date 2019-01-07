.class Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
.source "FolderCanModifyResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerFolderCanModifyResult"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
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
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
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
    .line 25
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;->items:Ljava/util/List;

    .line 26
    return-void
.end method
