.class public Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "SetPushFoldersRequestData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;
    }
.end annotation


# instance fields
.field public accountSwitch:Z

.field public subscribeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "accountSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "folderSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;->subscribeList:Ljava/util/List;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;->accountSwitch:Z

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;->subscribeList:Ljava/util/List;

    .line 17
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;->accountSwitch:Z

    .line 18
    return-void
.end method
