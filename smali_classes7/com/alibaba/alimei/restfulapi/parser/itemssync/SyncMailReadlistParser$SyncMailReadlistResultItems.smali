.class Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncMailReadlistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMailReadlistResultItems"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;->items:Ljava/util/List;

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
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;->items:Ljava/util/List;

    .line 30
    return-void
.end method
