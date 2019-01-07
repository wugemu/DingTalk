.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
.super Ljava/lang/Object;
.source "FavSpaceModel.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileSize:J

.field private fileType:Ljava/lang/String;

.field private isESafeNetEncrypt:Ljava/lang/String;

.field private isEncrypt:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 2
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->spaceId:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileId:Ljava/lang/String;

    .line 22
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileSize:J

    .line 23
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->path:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileType:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->type:Ljava/lang/String;

    .line 26
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->appId:Ljava/lang/String;

    .line 28
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->priority:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isESafeNetEncrypt:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isESafeNetEncrypt:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_0
    const-string/jumbo v1, "spaceId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const-string/jumbo v1, "spaceId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->spaceId:Ljava/lang/String;

    .line 41
    :cond_2
    const-string/jumbo v1, "fileId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    const-string/jumbo v1, "fileId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileId:Ljava/lang/String;

    .line 45
    :cond_3
    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->path:Ljava/lang/String;

    .line 49
    :cond_4
    const-string/jumbo v1, "fileType"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    const-string/jumbo v1, "fileType"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileType:Ljava/lang/String;

    .line 52
    :cond_5
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->type:Ljava/lang/String;

    .line 56
    :cond_6
    const-string/jumbo v1, "fileSize"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    const-string/jumbo v1, "fileSize"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileSize:J

    .line 60
    :cond_7
    const-string/jumbo v1, "isEncrypt"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 61
    const-string/jumbo v1, "isEncrypt"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt:Ljava/lang/String;

    .line 64
    :cond_8
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 65
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->appId:Ljava/lang/String;

    .line 68
    :cond_9
    const-string/jumbo v1, "priority"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 69
    const-string/jumbo v1, "priority"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->priority:Ljava/lang/String;

    .line 72
    :cond_a
    const-string/jumbo v1, "isESafeNetEncrypt"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "isESafeNetEncrypt"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isESafeNetEncrypt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileSize:J

    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsESafeNetEncrypt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isESafeNetEncrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEncrypt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorityAsInt()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->priority:Ljava/lang/String;

    .line 1150
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 208
    return v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isESafeNetEncrypt()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    sget-object v0, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->getIsESafeNetEncrypt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEncrypt()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->getIsEncrypt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->appId:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileSize:J

    .line 153
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->fileType:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setIsESafeNetEncrypt(Ljava/lang/String;)V
    .locals 0
    .param p1, "isESafeNetEncrypt"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isESafeNetEncrypt:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setIsEncrypt(Ljava/lang/String;)V
    .locals 0
    .param p1, "isEncrypt"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->path:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->priority:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->spaceId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->type:Ljava/lang/String;

    .line 177
    return-void
.end method
