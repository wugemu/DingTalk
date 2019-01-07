.class public final Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;
.super Ljava/lang/Object;
.source "JobInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30c4ce44ffadbb2L


# instance fields
.field private activeStatus:Ljava/lang/String;

.field private authLevel:I

.field private corpId:Ljava/lang/String;

.field private introduceImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private introduceVideoPosterURL:Ljava/lang/String;

.field private introduceVideoURL:Ljava/lang/String;

.field private jobCategoryDesc:Ljava/lang/String;

.field private jobDesc:Ljava/lang/String;

.field private jobDetailURL:Ljava/lang/String;

.field private jobId:Ljava/lang/String;

.field private jobTitle:Ljava/lang/String;

.field private orgIconURL:Ljava/lang/String;

.field private orgName:Ljava/lang/String;

.field private orgShortName:Ljava/lang/String;

.field private publisherAvatarMediaId:Ljava/lang/String;

.field private publisherDesc:Ljava/lang/String;

.field private publisherUid:J

.field private responseRate:Ljava/lang/String;

.field private rightsLevel:I

.field private salaryDesc:Ljava/lang/String;

.field private slogan:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModel(Lguj;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;
    .locals 5
    .param p0, "model"    # Lguj;

    .prologue
    const/4 v4, 0x0

    .line 263
    if-nez p0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;-><init>()V

    .line 267
    .local v0, "object":Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;
    iget-object v1, p0, Lguj;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobId:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lguj;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->corpId:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lguj;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobTitle:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lguj;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgName:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lguj;->e:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 271
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->rightsLevel:I

    .line 272
    iget-object v1, p0, Lguj;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 272
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->authLevel:I

    .line 273
    iget-object v1, p0, Lguj;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->salaryDesc:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lguj;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobCategoryDesc:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lguj;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDesc:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lguj;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoURL:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lguj;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoPosterURL:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lguj;->l:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceImageList:Ljava/util/List;

    .line 279
    iget-object v1, p0, Lguj;->m:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 279
    iput-wide v2, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherUid:J

    .line 280
    iget-object v1, p0, Lguj;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherAvatarMediaId:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lguj;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherDesc:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lguj;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->responseRate:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lguj;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->activeStatus:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lguj;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDetailURL:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lguj;->s:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 285
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoWidth:I

    .line 286
    iget-object v1, p0, Lguj;->t:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 286
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoHeight:I

    .line 287
    iget-object v1, p0, Lguj;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->slogan:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lguj;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgIconURL:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lguj;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->token:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lguj;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgShortName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final getActiveStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->activeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthLevel()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->authLevel:I

    return v0
.end method

.method public final getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgShortName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgShortName:Ljava/lang/String;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getIntroduceImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceImageList:Ljava/util/List;

    return-object v0
.end method

.method public final getIntroduceVideoPosterURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoPosterURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntroduceVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobCategoryDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobCategoryDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobDetailURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDetailURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobId:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrgIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrgShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherAvatarMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherAvatarMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherUid:J

    return-wide v0
.end method

.method public final getResponseRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->responseRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getRightsLevel()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->rightsLevel:I

    return v0
.end method

.method public final getSalaryDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->salaryDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoHeight:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoWidth:I

    return v0
.end method

.method public final setActiveStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeStatus"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->activeStatus:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public final setAuthLevel(I)V
    .locals 0
    .param p1, "authLevel"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->authLevel:I

    .line 109
    return-void
.end method

.method public final setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->corpId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final setIntroduceImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "introduceImageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceImageList:Ljava/util/List;

    .line 157
    return-void
.end method

.method public final setIntroduceVideoPosterURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "introduceVideoPosterURL"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoPosterURL:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public final setIntroduceVideoURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "introduceVideoURL"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->introduceVideoURL:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final setJobCategoryDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobCategoryDesc"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobCategoryDesc:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final setJobDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobDesc"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDesc:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public final setJobDetailURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobDetailURL"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobDetailURL:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public final setJobId(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final setJobTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobTitle"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->jobTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final setOrgIconURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgIconURL"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgIconURL:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public final setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final setOrgShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgShortName"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->orgShortName:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public final setPublisherAvatarMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherAvatarMediaId"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherAvatarMediaId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public final setPublisherDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherDesc"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherDesc:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public final setPublisherUid(J)V
    .locals 1
    .param p1, "publisherUid"    # J

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->publisherUid:J

    .line 165
    return-void
.end method

.method public final setResponseRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseRate"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->responseRate:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public final setRightsLevel(I)V
    .locals 0
    .param p1, "rightsLevel"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->rightsLevel:I

    .line 101
    return-void
.end method

.method public final setSalaryDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "salaryDesc"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->salaryDesc:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final setSlogan(Ljava/lang/String;)V
    .locals 0
    .param p1, "slogan"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->slogan:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->token:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public final setVideoHeight(I)V
    .locals 0
    .param p1, "videoHeight"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoHeight:I

    .line 221
    return-void
.end method

.method public final setVideoWidth(I)V
    .locals 0
    .param p1, "videoWidth"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->videoWidth:I

    .line 213
    return-void
.end method
