.class public Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
.super Ljava/lang/Object;
.source "SetFolderPushSettingsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$AccountSwitchResult;,
        Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;
    }
.end annotation


# instance fields
.field public accountSwitch:Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$AccountSwitchResult;

.field public subcribeResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;",
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
