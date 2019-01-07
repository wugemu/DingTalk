.class public Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "ShareTypeForwardHandler.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final SHARE_FILE_TYPE:I = 0x4

.field private static final SHARE_IMAGE_TYPE:I = 0x3

.field private static final SHARE_LINK_TYPE:I = 0x1

.field protected static final SHARE_TEXT_TYPE:I = 0x2


# instance fields
.field private mChooseOrientation:I

.field private mDingTextContent:Ljava/lang/String;

.field private mFilePrivateTag:I

.field private mFromSystemShare:Z

.field private mFromSystemShareMime:Ljava/lang/String;

.field private mIsAliFile:Z

.field private final mLockTempDir:Ljava/lang/Object;

.field private mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private mShareFileUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mShareImageUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSharePicUrl:Ljava/lang/String;

.field private mShareSingleImage:Ljava/lang/String;

.field private mShareTempFileDir:Ljava/lang/String;

.field private mShareText:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mShareType:I

.field private mShareUrl:Ljava/lang/String;

.field private mSrcMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Message;IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "srcMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "filePrivateFlag"    # I
    .param p3, "chooseOrientation"    # I
    .param p4, "shareType"    # I
    .param p7, "shareText"    # Ljava/lang/String;
    .param p8, "fromSystemShare"    # Z
    .param p9, "shareSingleImage"    # Ljava/lang/String;
    .param p10, "fromSystemShareMime"    # Ljava/lang/String;
    .param p11, "dingtextContent"    # Ljava/lang/String;
    .param p12, "shareUrl"    # Ljava/lang/String;
    .param p13, "sharePicURL"    # Ljava/lang/String;
    .param p14, "shareTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p5, "shareImageUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p6, "shareFileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mIsAliFile:Z

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mLockTempDir:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 94
    iput p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFilePrivateTag:I

    .line 95
    iput p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mChooseOrientation:I

    .line 96
    iput p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    .line 97
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_1
    iput-object p7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareText:Ljava/lang/String;

    .line 104
    iput-boolean p8, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShare:Z

    .line 105
    iput-object p9, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareSingleImage:Ljava/lang/String;

    .line 106
    iput-object p10, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShareMime:Ljava/lang/String;

    .line 107
    iput-object p11, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mDingTextContent:Ljava/lang/String;

    .line 108
    iput-object p12, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareUrl:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mSharePicUrl:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTitle:Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "deleteTempFile"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTempFileDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTempFileDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mLockTempDir:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mSharePicUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFilePrivateTag:I

    return v0
.end method

.method static synthetic access$1700(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mDingTextContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mChooseOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->shareMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShare:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->navigator2Home(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareSingleImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->toastNotSupported()V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->toastSomeNotSupported()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendTextMessage(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mIsAliFile:Z

    return v0
.end method

.method private copyContentUriToCustomFile(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readName"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 545
    if-nez p1, :cond_0

    .line 546
    const/4 v6, 0x0

    .line 576
    :goto_0
    return-object v6

    .line 548
    :cond_0
    const/4 v1, 0x0

    .line 549
    .local v1, "fileName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 550
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8, p1}, Ldhu;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 553
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lctk$i;->and_from_system_contact_default_name:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3094
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3095
    const-string/jumbo v8, "."

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 3096
    if-lez v8, :cond_3

    .line 3097
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_3
    const-string/jumbo v8, ".vcf"

    invoke-static {v1, v8}, Ldhw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, "targetPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 558
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 559
    .local v4, "targetOutputStream":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 561
    .local v7, "tempArray":[B
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 562
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .end local v4    # "targetOutputStream":Ljava/io/OutputStream;
    .local v5, "targetOutputStream":Ljava/io/OutputStream;
    const/16 v8, 0x2000

    :try_start_1
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v7

    .line 565
    :goto_1
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    .line 566
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 568
    .end local v3    # "length":I
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 569
    .end local v5    # "targetOutputStream":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "targetOutputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    const/4 v6, 0x0

    .line 572
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 573
    invoke-static {v2}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 574
    invoke-static {v4}, Ldhw;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 572
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "targetOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "length":I
    .restart local v5    # "targetOutputStream":Ljava/io/OutputStream;
    :cond_4
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 573
    invoke-static {v2}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 574
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 575
    .end local v5    # "targetOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "targetOutputStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 572
    .end local v3    # "length":I
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 573
    invoke-static {v2}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 574
    invoke-static {v4}, Ldhw;->a(Ljava/io/Closeable;)V

    throw v8

    .line 572
    .end local v4    # "targetOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "targetOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "targetOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "targetOutputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 568
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 399
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 400
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 402
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 403
    return-object v0
.end method

.method private getConversationMember(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 278
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p2, :cond_0

    .line 290
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 292
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 293
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;

    invoke-direct {v4, p0, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/Callback;)V

    const-class v5, Lcma;

    .line 294
    invoke-interface {v2, v4, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 292
    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 315
    .end local v0    # "uid":J
    :cond_0
    return-void
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 477
    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    const-string/jumbo v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 490
    :cond_0
    :goto_0
    return-object v1

    .line 481
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->getFilePathByUri(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getFilePathByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 495
    const/4 v7, 0x0

    .line 497
    .local v7, "imgPath":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 537
    :goto_0
    return-object v2

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShare:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "text/x-vcard"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShareMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->copyContentUriToCustomFile(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 506
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    :try_start_0
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 517
    .local v8, "index":I
    :goto_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    invoke-static {v7}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTempFileDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-static {}, Ldhw;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTempFileDir:Ljava/lang/String;

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mLockTempDir:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTempFileDir:Ljava/lang/String;

    invoke-static {p1, v6, v0}, Ldhw;->a(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    .end local v8    # "index":I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_4
    if-nez v7, :cond_5

    .line 534
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_5
    move-object v2, v7

    .line 537
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    const/4 v8, 0x1

    .restart local v8    # "index":I
    goto :goto_1

    .line 527
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private navigator2Home(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 407
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 408
    return-void
.end method

.method private sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 412
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 413
    .local v0, "messageSender":Ldiz;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$11;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    const-class v4, Ldiz$a;

    invoke-interface {v2, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldiz$a;

    .line 2131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 429
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 430
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 431
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;

    invoke-direct {v2, p0, v0, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method private sendLinkMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 586
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 587
    .local v0, "messageSender":Ldiz;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$13;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$13;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v4, Ldiz$a;

    invoke-interface {v2, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldiz$a;

    .line 3131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 611
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 612
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 613
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method private sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 630
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->file_upload_error_not_found:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 766
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v1, :cond_2

    .line 635
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 636
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->msg_space_uploading:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 638
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 639
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 640
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 641
    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendTextMessage(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "otherWords"    # Ljava/lang/String;
    .param p3, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 367
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 368
    .local v0, "mMessageSender":Ldiz;
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;

    invoke-direct {v2, p0, v0, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;Ljava/lang/String;)V

    .line 1131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 387
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 388
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 389
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$10;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$10;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method private shareDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 177
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->showNativeShareAlertDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->shareLinkDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private shareMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 319
    iget v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    packed-switch v3, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 321
    :pswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "link"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "share_in"

    invoke-interface {v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1388

    if-lt v3, v4, :cond_0

    .line 325
    sget v3, Lctk$i;->text_too_long:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareText:Ljava/lang/String;

    invoke-direct {p0, p2, v3, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendTextMessage(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShare:Z

    if-eqz v3, :cond_1

    .line 329
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->navigator2Home(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto :goto_0

    .line 336
    .end local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    .restart local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "image"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "share_in"

    invoke-interface {v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v3

    invoke-virtual {v3, p2}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 340
    .local v0, "isEncrypt":Z
    if-eqz v0, :cond_4

    .line 341
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 342
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareImageUriList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    .line 348
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareSingleImage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    .line 345
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareSingleImage:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareFileUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 351
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mFromSystemShare:Z

    if-eqz v3, :cond_5

    .line 352
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->navigator2Home(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 354
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto/16 :goto_0

    .line 358
    .end local v0    # "isEncrypt":Z
    .end local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 359
    .restart local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "file"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "share_in"

    invoke-interface {v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNativeShareAlertDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->getConversationMember(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$7;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-static {p1, v0, v1}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V

    goto :goto_0
.end method

.method private toastNotSupported()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 778
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$5;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void
.end method

.method private toastSomeNotSupported()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 769
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$4;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 775
    return-void
.end method


# virtual methods
.method protected getForwardTipInfo()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tipInfo":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_trans_to_multiple_link_message_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportMultiple()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 135
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    return v0
.end method

.method protected send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 149
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mShareType:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendLinkMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setIsAliFile(Z)V
    .locals 0
    .param p1, "isAliFile"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mIsAliFile:Z

    .line 174
    return-void
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->onFail(ILjava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->shareDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0
.end method

.method protected shareLinkDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 580
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    .line 581
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mDingTextContent:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;)V

    .line 582
    return-void
.end method
