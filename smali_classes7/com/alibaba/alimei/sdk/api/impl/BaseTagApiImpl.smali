.class public Lcom/alibaba/alimei/sdk/api/impl/BaseTagApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "BaseTagApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/TagApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    return-void
.end method

.method public hasMoreHistoryMail(JLjava/lang/String;Lxv;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "labelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public hasMoreHistoryMail(JLjava/lang/String;)Z
    .locals 1
    .param p1, "id"    # J
    .param p3, "labelId"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public queryAllTags(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    return-void
.end method

.method public queryTagModel(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    return-void
.end method

.method public queryTagNewMailCounts(Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "tag_id"    # Ljava/lang/String;
    .param p2, "isConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    return-void
.end method

.method public removeTag(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public startSyncTags(Z)V
    .locals 0
    .param p1, "fullSync"    # Z

    .prologue
    .line 38
    return-void
.end method

.method public updateHistoryStatus(Ljava/lang/String;JZLxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    return-void
.end method

.method public updateLastVisitTime(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    return-void
.end method

.method public updateLastestSyncTime(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    return-void
.end method

.method public updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method
