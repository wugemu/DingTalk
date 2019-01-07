.class public Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;
.super Ljava/lang/Object;
.source "OpsSettingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;
    }
.end annotation


# instance fields
.field public accountReminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel$OpsAccountMailReminder;",
            ">;"
        }
    .end annotation
.end field

.field public autoDownloadBodyStatus:I

.field public isConversationOpen:Z

.field public isMailTop:Z

.field public newMailReminder:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method
