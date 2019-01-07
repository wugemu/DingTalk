.class public Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;
.super Ljava/lang/Object;
.source "SetFolderPushSettingsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetFolderPushResult"
.end annotation


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public folderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;->this$0:Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
