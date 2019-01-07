.class final Ldjr$1;
.super Ljava/lang/Object;
.source "EncryptVoiceDownloadHelper.java"

# interfaces
.implements Lgqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjr;->a(ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Ldjr;


# direct methods
.method constructor <init>(Ldjr;Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Ldjr;

    .prologue
    .line 33
    iput-object p1, p0, Ldjr$1;->c:Ldjr;

    iput-object p2, p0, Ldjr$1;->a:Lcma;

    iput-object p3, p0, Ldjr$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Ldjr$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Ldjr$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public final onProgress(IJJ)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 36
    iget-object v0, p0, Ldjr$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Ldjr$1;->a:Lcma;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    long-to-double v4, p4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    long-to-double v6, p2

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ldjr$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Ldjr$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v3, p0, Ldjr$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v4, p0, Ldjr$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "audioKey":Ljava/lang/String;
    const-string/jumbo v2, "AUDIO"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 46
    .local v1, "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->update2RemoteUrlWithNoDel(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "audioKey":Ljava/lang/String;
    .end local v1    # "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    :cond_0
    iget-object v2, p0, Ldjr$1;->a:Lcma;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Ldjr$1;->a:Lcma;

    invoke-interface {v2, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-void
.end method
