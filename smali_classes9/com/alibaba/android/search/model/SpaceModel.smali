.class public Lcom/alibaba/android/search/model/SpaceModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "SpaceModel.java"


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mFileId:Ljava/lang/String;

.field private mFileSize:J

.field private mId:J

.field private mKeyword:Ljava/lang/String;

.field private mKind:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSpaceId:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lchq;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Lchq;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/SpaceModel;->init(Lchq;)V

    .line 49
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Space:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/SpaceModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 50
    iput-object p2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKeyword:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private init(Lchq;)V
    .locals 2
    .param p1, "data"    # Lchq;

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p1, Lchq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mName:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lchq;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mDesc:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lchq;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKind:Ljava/lang/String;

    .line 62
    iget-wide v0, p1, Lchq;->f:J

    iput-wide v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mId:J

    .line 63
    iget-object v0, p1, Lchq;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mSpaceId:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lchq;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v1, "space_file_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileSize:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    iget-object v0, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v1, "space_file_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mType:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mSpaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/model/SpaceModel;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/search/model/SpaceModel;->mDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileSize:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/search/model/SpaceModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 89
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 90
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mDesc:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 92
    iget-wide v4, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileSize:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKind:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 94
    iget-wide v4, p0, Lcom/alibaba/android/search/model/SpaceModel;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/search/model/SpaceModel;->mType:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "file"

    iget-object v4, p0, Lcom/alibaba/android/search/model/SpaceModel;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 106
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mFileSize:J

    .line 143
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mId:J

    .line 127
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mKind:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mSpaceId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/search/model/SpaceModel;->mType:Ljava/lang/String;

    .line 151
    return-void
.end method
