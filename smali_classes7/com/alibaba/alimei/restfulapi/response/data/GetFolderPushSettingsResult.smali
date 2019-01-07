.class public Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;
.super Ljava/lang/Object;
.source "GetFolderPushSettingsResult.java"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->accountSwitch:Z

    return-void
.end method
