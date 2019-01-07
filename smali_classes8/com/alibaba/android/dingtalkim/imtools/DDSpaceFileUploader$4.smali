.class final Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

.field final synthetic c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    check-cast p1, Lgrh;

    .line 1205
    if-nez p1, :cond_0

    .line 1206
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DDSpaceFileUploader"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", result is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 1211
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v2, p1, Lgrh;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->e:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->f:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v2, p1, Lgrh;->h:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picSize:J

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->g:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DDSpaceFileUploader"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 234
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 226
    return-void
.end method
