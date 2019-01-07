.class public Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;
.super Ljava/lang/Object;
.source "OpsSettingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpsAccountMailReminder"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;",
            ">;"
        }
    .end annotation
.end field

.field public newMailReminder:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
