.class public final Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;
.super Ljava/lang/Object;
.source "OfflineTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

.field public j:I

.field public k:J

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->k:J

    .line 54
    return-void
.end method
