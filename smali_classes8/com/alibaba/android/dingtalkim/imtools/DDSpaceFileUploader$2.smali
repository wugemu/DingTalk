.class final Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Lgqs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic d:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

.field final synthetic e:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->d:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->e:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 3
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 86
    return-void
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 137
    return-void
.end method

.method public final onProgress(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "uploadedSize"    # J

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 90
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v1, v4, v4, v5}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onProgress(III)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p3

    div-long/2addr v2, p1

    long-to-int v0, v2

    .line 97
    .local v0, "progress":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v1, v5, v0, v0}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onProgress(III)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lctk$i;->and_cspace_upload_fail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 132
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 109
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 110
    if-nez v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lctk$i;->and_cspace_upload_fail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 116
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    const-string/jumbo v2, "cspace_video_preview_online_enable"

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "space_bubble_video_enable"

    .line 117
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->d:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->e:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v2, v1, v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0

    .line 124
    :cond_2
    const-string/jumbo v2, "space_bubble_image_enable"

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->d:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->e:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v2, v1, v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->f:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->e:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v2, v1, v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto/16 :goto_0
.end method
