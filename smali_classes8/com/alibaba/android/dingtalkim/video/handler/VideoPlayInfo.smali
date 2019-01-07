.class public Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
.super Ljava/lang/Object;
.source "VideoPlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44ef44d79fa3df29L


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mAuthEntity:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mBitrate:J

.field private mCid:Ljava/lang/String;

.field private mHideForward:Z

.field private mMenuSeed:J

.field private mMessageId:J

.field private mOrgId:J

.field private mPicAuthCode:Ljava/lang/String;

.field private mSpaceStatisticSrc:Ljava/lang/String;

.field private mUid:J

.field private mVideoAuthUrl:Ljava/lang/String;

.field private mVideoDuration:J

.field private mVideoHeight:I

.field private mVideoMessageObject:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

.field private mVideoPicAuthUrl:Ljava/lang/String;

.field private mVideoPicUrl:Ljava/lang/String;

.field private mVideoSize:J

.field private mVideoSourceType:I

.field private mVideoUrl:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoSourceType:I

    return p1
.end method

.method static synthetic access$1102(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1202(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1302(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoDuration:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mOrgId:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mSpaceStatisticSrc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mBitrate:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mCid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mUid:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mMenuSeed:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoMessageObject:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mHideForward:Z

    return p1
.end method

.method static synthetic access$302(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoAuthUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthEntity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mPicAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoPicUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoPicAuthUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mBitrate:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuSeed()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mMenuSeed:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mMessageId:J

    return-wide v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mOrgId:J

    return-wide v0
.end method

.method public getPicAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mPicAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceStatisticSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mSpaceStatisticSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mUid:J

    return-wide v0
.end method

.method public getVideoAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoDuration:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoHeight:I

    return v0
.end method

.method public getVideoMessageObject()Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoMessageObject:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    return-object v0
.end method

.method public getVideoPicAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoPicAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoSize:J

    return-wide v0
.end method

.method public getVideoSourceType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoSourceType:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mVideoWidth:I

    return v0
.end method

.method public isHideForward()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->mHideForward:Z

    return v0
.end method
