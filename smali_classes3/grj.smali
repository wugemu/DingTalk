.class public final Lgrj;
.super Ljava/lang/Object;
.source "UploadFileModel.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field public b:I

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "uploadedSize"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 38
    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lgrj;-><init>(IJJLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 39
    return-void
.end method

.method private constructor <init>(IJJLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "uploadedSize"    # J
    .param p4, "fileSize"    # J
    .param p6, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lgrj;->b:I

    .line 32
    iput-wide p2, p0, Lgrj;->c:J

    .line 33
    iput-wide p4, p0, Lgrj;->d:J

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lgrj;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 35
    return-void
.end method
