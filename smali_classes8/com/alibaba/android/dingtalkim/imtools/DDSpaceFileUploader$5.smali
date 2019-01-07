.class final Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 247
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-nez v4, :cond_1

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lctk$i;->and_cspace_upload_fail:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 253
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .line 254
    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 255
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    .line 256
    const-string/jumbo v4, "crypto"

    const-string/jumbo v5, "uploadFile2Space"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uploadFile2Space spaceId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ",fileId"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "; appVersion:"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 257
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent;

    .line 265
    .local v3, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v4, v3, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v4, :cond_3

    move-object v0, v3

    .line 266
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 267
    .local v0, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v4}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->setExtension(Ljava/util/Map;)V

    .line 271
    .end local v0    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v3    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;->b:Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
