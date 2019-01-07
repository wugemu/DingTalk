.class public Lgpc;
.super Ljava/lang/Object;
.source "TaskApiImpl.java"


# static fields
.field private static volatile a:Lgpc;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgpc;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lgpc;->a:Lgpc;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lgpc;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lgpc;->a:Lgpc;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lgpc;

    invoke-direct {v0}, Lgpc;-><init>()V

    sput-object v0, Lgpc;->a:Lgpc;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lgpc;->a:Lgpc;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(I)V
    .locals 7
    .param p0, "taskFromFlag"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 193
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "TaskApiImpl"

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "TaskApiImpl.clearUploadTask: taskFromFlag: "

    aput-object v4, v2, v3

    .line 194
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lgoq;->a()V

    .line 198
    if-ne p0, v5, :cond_0

    .line 199
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 6119
    iget-object v0, v0, Lgpb;->d:Lgoz;

    .line 199
    invoke-virtual {v0}, Lgoz;->b()V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    if-ne p0, v6, :cond_1

    .line 204
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 6123
    iget-object v0, v0, Lgpb;->e:Lgoz;

    .line 204
    invoke-virtual {v0}, Lgoz;->b()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 7119
    iget-object v0, v0, Lgpb;->d:Lgoz;

    .line 208
    invoke-virtual {v0}, Lgoz;->b()V

    .line 209
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 7123
    iget-object v0, v0, Lgpb;->e:Lgoz;

    .line 209
    invoke-virtual {v0}, Lgoz;->b()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lgpa;Lgpd;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lgpa;
    .param p2, "progressObserver"    # Lgpd;

    .prologue
    .line 133
    iget-object v1, p1, Lgpa;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 134
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "TaskApiImpl"

    const-string/jumbo v3, "TaskApiImpl upload param.data not dentryModel"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p1, Lgpa;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 140
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v0, v2, v3}, Lgpd;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    iget v1, p1, Lgpa;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 146
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v1

    .line 2119
    iget-object v1, v1, Lgpb;->d:Lgoz;

    .line 146
    invoke-virtual {v1, p0, p1, p2}, Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0

    .line 148
    :cond_3
    iget v1, p1, Lgpa;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 149
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v1

    .line 2123
    iget-object v1, v1, Lgpb;->e:Lgoz;

    .line 149
    invoke-virtual {v1, p0, p1, p2}, Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 3
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "fromFlag"    # I

    .prologue
    .line 155
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "TaskApiImpl"

    const-string/jumbo v2, "TaskApiImpl.cancelUpload: "

    .line 156
    invoke-static {v2, p0}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 3119
    iget-object v0, v0, Lgpb;->d:Lgoz;

    .line 159
    invoke-virtual {v0, p0}, Lgoz;->a(Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 164
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 3123
    iget-object v0, v0, Lgpb;->e:Lgoz;

    .line 164
    invoke-virtual {v0, p0}, Lgoz;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 4119
    iget-object v0, v0, Lgpb;->d:Lgoz;

    .line 168
    invoke-virtual {v0, p0}, Lgoz;->a(Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v0

    .line 4123
    iget-object v0, v0, Lgpb;->e:Lgoz;

    .line 169
    invoke-virtual {v0, p0}, Lgoz;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 6
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 113
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "TaskApiImpl"

    if-nez p0, :cond_0

    const-string/jumbo v1, "TaskApiImpl.cancelDownload: spaceDo is null"

    :goto_0
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 122
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v1

    .line 2107
    iget-object v1, v1, Lgpb;->a:Lgoz;

    .line 122
    invoke-virtual {v1, v0}, Lgoz;->a(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v1

    .line 2111
    iget-object v1, v1, Lgpb;->b:Lgoz;

    .line 123
    invoke-virtual {v1, v0}, Lgoz;->a(Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v1

    .line 2115
    iget-object v1, v1, Lgpb;->c:Lgoz;

    .line 124
    invoke-virtual {v1, v0}, Lgoz;->a(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 113
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "TaskApiImpl.cancelDownload: spaceId: "

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", fileId: "

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", spaceType:"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 118
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 115
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v6, 0x0

    .line 174
    const-string/jumbo v1, "TaskApiImpl.cancelUpload: dentryModels: null or empty"

    .line 175
    .local v1, "dentryModesTrace":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "TaskApiImpl.cancelUpload: dentryModels.size: "

    aput-object v2, v3, v6

    const/4 v2, 0x1

    .line 177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", "

    aput-object v4, v3, v2

    const/4 v4, 0x3

    const-string/jumbo v5, "dentryModels.get(0): "

    .line 178
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v5, v2}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 176
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_0
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "TaskApiImpl"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 187
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v3

    .line 5119
    iget-object v3, v3, Lgpb;->d:Lgoz;

    .line 187
    invoke-virtual {v3, v0}, Lgoz;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgpa;Lgqr;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lgpa;
    .param p3, "callback"    # Lgqr;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 52
    if-nez p3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v2, p2, Lgpa;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p2, Lgpa;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    iput-object v2, p2, Lgpa;->a:Ljava/lang/Object;

    .line 58
    :cond_1
    iget-object v2, p2, Lgpa;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_2

    .line 60
    const-string/jumbo v2, "20170720"

    const-string/jumbo v3, "param error"

    invoke-interface {p3, v2, v3}, Lgqr;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p2, Lgpa;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 66
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v1, Lgpc$1;

    invoke-direct {v1, p0, p3}, Lgpc$1;-><init>(Lgpc;Lgqr;)V

    .line 97
    .local v1, "progressObserver":Lgpd;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v2

    .line 1107
    iget-object v2, v2, Lgpb;->a:Lgoz;

    .line 99
    invoke-virtual {v2, p1, p2, v1}, Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 103
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v2

    .line 1111
    iget-object v2, v2, Lgpb;->b:Lgoz;

    .line 103
    invoke-virtual {v2, p1, p2, v1}, Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-static {}, Lgpb;->a()Lgpb;

    move-result-object v2

    .line 1115
    iget-object v2, v2, Lgpb;->c:Lgoz;

    .line 106
    invoke-virtual {v2, p1, p2, v1}, Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0
.end method
