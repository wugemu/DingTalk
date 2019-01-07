.class public Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;
.super Ljava/lang/Object;
.source "LWExecutor.java"


# static fields
.field private static mSupportImageFormat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

.field private mContext:Landroid/content/Context;

.field private mILWAPI:Ljao;

.field private mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sput-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".JGP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".JPEG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".PNG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".GIF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".BMP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    const-string/jumbo v1, ".WBMP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "constans"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .line 41
    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    return-object v0
.end method

.method private checkImageFormatlegal(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mSupportImageFormat:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalide image format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method private createLocalImageMessage(Ljava/lang/String;)Ljal;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->checkImageFormatlegal(Ljava/lang/String;)V

    .line 124
    sget v1, Ljal;->b:I

    invoke-static {v1, v2, p1, v2}, Ljaq;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljal;

    move-result-object v0

    .line 129
    .local v0, "lwmsgImage":Ljal;
    return-object v0
.end method

.method private getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, "typeIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1    # "typeIndex":I
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getLWToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getLWSercetID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .line 45
    invoke-interface {v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 1028
    const v3, 0x20140101

    invoke-static/range {v0 .. v5}, Ljap;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljap;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    .line 47
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;-><init>(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)V

    invoke-interface {v0, v1}, Ljao;->a(Ljao$a;)V

    .line 65
    return-void
.end method


# virtual methods
.method public shareImageUrlToDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 8
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/String;
    .param p4, "msgChat"    # Ljava/lang/String;
    .param p5, "msgLinkUrl"    # Ljava/lang/String;
    .param p6, "msgSource"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-static {v0, p1, v1, v1}, Ljaq;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljal;

    move-result-object v4

    .line 200
    .local v4, "lwmsgImage":Ljal;
    const-string/jumbo v6, "DYNAMIC2"

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    .line 201
    invoke-static/range {v0 .. v6}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljal;Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v7

    .line 210
    .local v7, "iLWMessage":Ljaj;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v2, 0x20131023

    invoke-interface {v0, v1, v7, v2}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 212
    return-void
.end method

.method public shareImageUrlToFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 8
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/String;
    .param p4, "msgChat"    # Ljava/lang/String;
    .param p5, "msgLinkUrl"    # Ljava/lang/String;
    .param p6, "msgSource"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 160
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {v0, p1, v1, v1}, Ljaq;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljal;

    move-result-object v4

    .line 167
    .local v4, "lwmsgImage":Ljal;
    const-string/jumbo v6, "SMS"

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    .line 168
    invoke-static/range {v0 .. v6}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljal;Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v7

    .line 177
    .local v7, "iLWMessage":Ljaj;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v2, 0x20131023

    invoke-interface {v0, v1, v7, v2}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 179
    return-void
.end method

.method public shareLocalImageToDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/String;
    .param p4, "msgChat"    # Ljava/lang/String;
    .param p5, "msgLinkUrl"    # Ljava/lang/String;
    .param p6, "msgSource"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->createLocalImageMessage(Ljava/lang/String;)Ljal;

    move-result-object v4

    .line 109
    .local v4, "lwmsgImage":Ljal;
    const-string/jumbo v6, "DYNAMIC2"

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    .line 110
    invoke-static/range {v0 .. v6}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljal;Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v7

    .line 119
    .local v7, "iLWMessage":Ljaj;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v2, 0x20131023

    invoke-interface {v0, v1, v7, v2}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 121
    return-void
.end method

.method public shareLocalImageToFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/String;
    .param p4, "msgChat"    # Ljava/lang/String;
    .param p5, "msgLinkUrl"    # Ljava/lang/String;
    .param p6, "msgSource"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->createLocalImageMessage(Ljava/lang/String;)Ljal;

    move-result-object v4

    .line 90
    .local v4, "lwmsgImage":Ljal;
    const-string/jumbo v6, "SMS"

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    .line 91
    invoke-static/range {v0 .. v6}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljal;Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v7

    .line 100
    .local v7, "iLWMessage":Ljaj;
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v2, 0x20131023

    invoke-interface {v0, v1, v7, v2}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 102
    return-void
.end method

.method public shareMusicToDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 15
    .param p1, "msgTitle"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/String;
    .param p3, "msgChat"    # Ljava/lang/String;
    .param p4, "msgPicture"    # Ljava/lang/String;
    .param p5, "msgDescription"    # Ljava/lang/String;
    .param p6, "msgThumbnail"    # Ljava/lang/String;
    .param p7, "msgExtra"    # Ljava/lang/String;
    .param p8, "msgPlaylink"    # Ljava/lang/String;
    .param p9, "msgLink"    # Ljava/lang/String;
    .param p10, "msgSource"    # Ljava/lang/String;
    .param p11, "msgDuration"    # D
    .param p13, "msgFlag"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v3, 0x3

    const-string/jumbo v13, "DYNAMIC2"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v10, p11

    move-object/from16 v12, p13

    .line 267
    invoke-static/range {v1 .. v13}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 280
    .local v0, "iLwMessageMedia":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 281
    return-void
.end method

.method public shareMusicToFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 14
    .param p1, "msgTitle"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/String;
    .param p3, "msgChat"    # Ljava/lang/String;
    .param p4, "msgPicture"    # Ljava/lang/String;
    .param p5, "msgDescription"    # Ljava/lang/String;
    .param p6, "msgThumbnail"    # Ljava/lang/String;
    .param p7, "msgExtra"    # Ljava/lang/String;
    .param p8, "msgPlaylink"    # Ljava/lang/String;
    .param p9, "msgLink"    # Ljava/lang/String;
    .param p10, "msgSource"    # Ljava/lang/String;
    .param p11, "msgDuration"    # D
    .param p13, "msgFlag"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v3, 0x3

    const-wide v10, 0x400b333333333333L    # 3.4

    const-string/jumbo v13, "SMS"

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    .line 233
    invoke-static/range {v1 .. v13}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 246
    .local v0, "iLwMessageMedia":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 247
    return-void
.end method

.method public shareTextToDynamic(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    const-string/jumbo v1, "DYNAMIC2"

    invoke-static {p1, v1}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 82
    .local v0, "iLwMessageText":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 83
    return-void
.end method

.method public shareTextToFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    const-string/jumbo v1, "SMS"

    invoke-static {p1, v1}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 73
    .local v0, "iLwMessageText":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 74
    return-void
.end method

.method public shareVideoToDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 15
    .param p1, "msgTitle"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/String;
    .param p3, "msgChat"    # Ljava/lang/String;
    .param p4, "msgPicture"    # Ljava/lang/String;
    .param p5, "msgDescription"    # Ljava/lang/String;
    .param p6, "msgThumbnail"    # Ljava/lang/String;
    .param p7, "msgExtra"    # Ljava/lang/String;
    .param p8, "msgPlaylink"    # Ljava/lang/String;
    .param p9, "msgLink"    # Ljava/lang/String;
    .param p10, "msgSource"    # Ljava/lang/String;
    .param p11, "msgDuration"    # D
    .param p13, "msgFlag"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v3, 0x4

    const-string/jumbo v13, "DYNAMIC2"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v10, p11

    move-object/from16 v12, p13

    .line 336
    invoke-static/range {v1 .. v13}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 349
    .local v0, "iLwMessageMedia":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 350
    return-void
.end method

.method public shareVideoToFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 15
    .param p1, "msgTitle"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/String;
    .param p3, "msgChat"    # Ljava/lang/String;
    .param p4, "msgPicture"    # Ljava/lang/String;
    .param p5, "msgDescription"    # Ljava/lang/String;
    .param p6, "msgThumbnail"    # Ljava/lang/String;
    .param p7, "msgExtra"    # Ljava/lang/String;
    .param p8, "msgPlaylink"    # Ljava/lang/String;
    .param p9, "msgLink"    # Ljava/lang/String;
    .param p10, "msgSource"    # Ljava/lang/String;
    .param p11, "msgDuration"    # D
    .param p13, "msgFlag"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v3, 0x4

    const-string/jumbo v13, "SMS"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v10, p11

    move-object/from16 v12, p13

    .line 302
    invoke-static/range {v1 .. v13}, Ljaq;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Ljaj;

    move-result-object v0

    .line 315
    .local v0, "iLwMessageMedia":Ljaj;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mILWAPI:Ljao;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->mContext:Landroid/content/Context;

    const v3, 0x20131023

    invoke-interface {v1, v2, v0, v3}, Ljao;->a(Landroid/content/Context;Ljaj;I)Z

    .line 316
    return-void
.end method
