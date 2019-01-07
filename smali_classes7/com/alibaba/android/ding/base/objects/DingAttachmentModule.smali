.class public Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;,
        Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;,
        Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public c:Z

.field public volatile d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

.field private j:Landroid/content/Context;

.field private k:J

.field private l:Ljava/io/File;

.field private m:Ljava/lang/String;

.field private n:Lcom/alibaba/wukong/im/Message;

.field private o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .param p4, "sendOrigin"    # Z

    .prologue
    .line 73
    const/4 v4, 0x0

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;ZLjava/lang/String;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;ZLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .param p4, "sendOrigin"    # Z
    .param p5, "dingIdStr"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->PREPARED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 79
    iput-object p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 80
    iput-object p5, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->f:Ljava/lang/String;

    .line 1342
    if-eqz p2, :cond_0

    .line 1345
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->i:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$2;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dingAttachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p3, "canDelete"    # Z

    .prologue
    .line 115
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;ZLjava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dingAttachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p3, "canDelete"    # Z
    .param p4, "dingIdStr"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 119
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 121
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 122
    iput-boolean p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 123
    iput-object p4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->f:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 97
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1f5

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 127
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    .line 3184
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_4

    .line 3204
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3205
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 3206
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 3207
    if-eqz v0, :cond_2

    .line 3208
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 3209
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 3210
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 3211
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-wide v6, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 3212
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 3213
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3214
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcop;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 3216
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->picType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 3217
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->size()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 130
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 131
    iput-boolean v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 132
    return-void

    .line 3214
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    goto :goto_0

    .line 3186
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 3222
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3223
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 3224
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 3225
    if-eqz v0, :cond_2

    .line 3226
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 3227
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 3228
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 3229
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-wide v6, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 3230
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 3231
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 3232
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    goto :goto_1

    .line 3188
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_6

    .line 3237
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3238
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 3239
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 3240
    if-eqz v0, :cond_2

    .line 3241
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    .line 3242
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 3243
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->type()I

    move-result v3

    iput v3, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 3244
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 3245
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 3246
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    goto/16 :goto_1

    .line 3190
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    .line 3191
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 3260
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    .line 3261
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_2

    .line 3262
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3263
    if-eqz v0, :cond_2

    .line 3265
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 3266
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v1

    .line 3270
    :goto_2
    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    goto/16 :goto_1

    .line 3267
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 3268
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Personal_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v1

    goto :goto_2

    .line 3193
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_a

    .line 3277
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    .line 3278
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v0, :cond_2

    .line 3279
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 3280
    if-eqz v0, :cond_2

    .line 3281
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    goto/16 :goto_1

    .line 3195
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    .line 3196
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_c

    .line 3288
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    .line 3289
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v0, :cond_2

    .line 3290
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 3291
    if-eqz v0, :cond_2

    .line 3292
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3293
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v0, :cond_2

    .line 3294
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 3295
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3296
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 3297
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3298
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 3198
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_2

    .line 3308
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3309
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 3310
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->n:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fillExtensionWithForwardCombineMessage(Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto/16 :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .param p4, "sendOrigin"    # Z

    .prologue
    .line 85
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;ZLjava/lang/String;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;ZLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .param p4, "sendOrigin"    # Z
    .param p5, "dingIdStr"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 89
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    .line 90
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->PREPARED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 91
    iput-object p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 92
    iput-object p5, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->f:Ljava/lang/String;

    .line 2330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2333
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->i:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .param p3, "x3"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    .line 3376
    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    .line 3377
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$5;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3356
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 3357
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->k:J

    .line 3358
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a:Ljava/lang/String;

    .line 3359
    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 3360
    iput-boolean p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->c:Z

    .line 3361
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    if-ne p2, v0, :cond_6

    .line 3362
    invoke-static {p1}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->m:Ljava/lang/String;

    .line 3366
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    .line 3367
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADING:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 3368
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    if-eqz v1, :cond_0

    .line 3369
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    invoke-interface {v1, v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;->a(Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V

    .line 3371
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    .line 4406
    if-eqz v0, :cond_2

    .line 4409
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    .line 4410
    if-eqz v1, :cond_7

    .line 4411
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    if-eqz v1, :cond_1

    .line 4412
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    .line 4562
    iput-boolean v7, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->a:Z

    .line 4415
    :cond_1
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Z)V

    .line 4469
    new-instance v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lifv;)V

    iput-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    .line 4470
    new-instance v1, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 4471
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5058
    iput-object v0, v1, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 5090
    iput-boolean v7, v1, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 4473
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    invoke-virtual {v0, v1, v2, v6}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    .line 4474
    :cond_2
    :goto_2
    return-void

    .line 3489
    :pswitch_0
    if-eqz p3, :cond_3

    .line 3490
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3379
    :goto_3
    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    goto :goto_0

    .line 3492
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    invoke-static {v0}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3493
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3494
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3496
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 3497
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WIFI level = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3498
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3499
    const-string/jumbo v4, "2g"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "3g"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, -0x46

    if-ge v0, v1, :cond_5

    .line 3500
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lhch;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 3504
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "COMPRESS : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3502
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->j:Landroid/content/Context;

    invoke-static {v0, p1, v7}, Lhch;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_4

    .line 3382
    :pswitch_1
    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    goto/16 :goto_0

    .line 3385
    :pswitch_2
    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    goto/16 :goto_0

    .line 3388
    :pswitch_3
    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    goto/16 :goto_0

    .line 3391
    :pswitch_4
    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    goto/16 :goto_0

    .line 3364
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->m:Ljava/lang/String;

    goto/16 :goto_1

    .line 4475
    :cond_7
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$4;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 3377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 36
    .line 5526
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 5527
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 5528
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-object p1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 5529
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-object p2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 5530
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 5531
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 5532
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 5533
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->k:J

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 5534
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    .line 5535
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    if-eqz v0, :cond_0

    .line 5536
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    .line 5538
    :cond_0
    if-eqz p3, :cond_1

    .line 5539
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 5540
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v1, "o"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5542
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 36
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 139
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V

    .line 3326
    .local v0, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 140
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
