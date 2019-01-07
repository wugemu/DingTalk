.class public final Lbov;
.super Ljava/lang/Object;
.source "CircleAPIImpl.java"

# interfaces
.implements Lbou;


# static fields
.field private static final a:Lbov;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lbov;

    invoke-direct {v0}, Lbov;-><init>()V

    sput-object v0, Lbov;->a:Lbov;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbov;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbov;->a:Lbov;

    return-object v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 199
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lbov$3;

    invoke-direct {v0, p0, p1}, Lbov$3;-><init>(Lbov;Lcma;)V

    .line 205
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 206
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-nez v1, :cond_0

    .line 207
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 10033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->readNotice(Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
    .locals 5
    .param p1, "loadParamObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 36
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    new-instance v0, Lbov$1;

    invoke-direct {v0, p0, p2}, Lbov$1;-><init>(Lbov;Lcma;)V

    .line 42
    .local v0, "handler":Lcmg;, "Lcmg<Lbpq;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 43
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "SNLoadParamObject == null || IDLSkynetService == null"

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->toIdl()Lbpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->load(Lbpl;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;Lcma;)V
    .locals 5
    .param p1, "postCreateModel"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    new-instance v0, Lbov$11;

    invoke-direct {v0, p0, p2}, Lbov$11;-><init>(Lbov;Lcma;)V

    .line 74
    .local v0, "handler":Lcmg;, "Lcmg<Lbpp;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 75
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 76
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "SNLoadParamObject == null || IDLSkynetService == null"

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->toIdl()Lbpo;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->createPost(Lbpo;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 85
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lbov$12;

    invoke-direct {v0, p0, p2}, Lbov$12;-><init>(Lbov;Lcma;)V

    .line 91
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 92
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "SNLoadParamObject == null || IDLSkynetService == null"

    .line 4033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->deletePost(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcma;)V
    .locals 8
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "comment"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 150
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    new-instance v0, Lbov$15;

    invoke-direct {v0, p0, p3}, Lbov$15;-><init>(Lbov;Lcma;)V

    .line 156
    .local v0, "handler":Lcmg;, "Lcmg<Lbpp;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const-class v3, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 157
    .local v2, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    invoke-static {p2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Lbpk;

    move-result-object v1

    .line 158
    .local v1, "model":Lbpk;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 159
    :cond_0
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "postId is invalid || commentModel is invalid || service == null"

    .line 7033
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-interface {v2, p1, v1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->comment(Ljava/lang/Long;Lbpk;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "commentId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    .line 167
    new-instance v0, Lbov$16;

    invoke-direct {v0, p0, p3}, Lbov$16;-><init>(Lbov;Lcma;)V

    .line 173
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 174
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 175
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "postId is invalid || commentId is invalid || service == null"

    .line 8033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->recallComment(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 117
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    new-instance v0, Lbov$13;

    invoke-direct {v0, p0, p3}, Lbov$13;-><init>(Lbov;Lcma;)V

    .line 123
    .local v0, "handler":Lcmg;, "Lcmg<Lbpp;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 124
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 125
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "postId is invalid or service is null"

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->likeV2(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 248
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lbov$6;

    invoke-direct {v0, p0, p2}, Lbov$6;-><init>(Lbov;Lcma;)V

    .line 255
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;

    .line 256
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;
    if-nez v1, :cond_0

    .line 257
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 13033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;->updateAlbumCover(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lbpt;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 231
    .local p1, "callback":Lcma;, "Lcma<Lbpt;>;"
    new-instance v0, Lbov$5;

    invoke-direct {v0, p0, p1}, Lbov$5;-><init>(Lbov;Lcma;)V

    .line 238
    .local v0, "handler":Lcmg;, "Lcmg<Lbpt;Lbpt;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;

    .line 239
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;
    if-nez v1, :cond_0

    .line 240
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 12033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetSettingService;->getUserDefaultSettings(Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
    .locals 5
    .param p1, "loadParamObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 52
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    new-instance v0, Lbov$10;

    invoke-direct {v0, p0, p2}, Lbov$10;-><init>(Lbov;Lcma;)V

    .line 58
    .local v0, "handler":Lcmg;, "Lcmg<Lbpq;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 59
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 60
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "SNLoadParamObject == null || IDLSkynetService == null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->toIdl()Lbpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->loadPersonal(Lbpl;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 134
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lbov$14;

    invoke-direct {v0, p0, p2}, Lbov$14;-><init>(Lbov;Lcma;)V

    .line 140
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 141
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 142
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "postId is invalid or service is null"

    .line 6033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->recallLike(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
    .locals 5
    .param p1, "loadParamModel"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 303
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    new-instance v0, Lbov$9;

    invoke-direct {v0, p0, p2}, Lbov$9;-><init>(Lbov;Lcma;)V

    .line 313
    .local v0, "handler":Lcmg;, "Lcmg<Lbpq;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 314
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 315
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 16033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->toIdl()Lbpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->loadShield(Lbpl;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    new-instance v0, Lbov$2;

    invoke-direct {v0, p0, p2}, Lbov$2;-><init>(Lbov;Lcma;)V

    .line 189
    .local v0, "handler":Lcmg;, "Lcmg<Lbpp;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 190
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 191
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "postId is invalid or service == null"

    .line 9033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->getPostDetail(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "latestTime"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 215
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    new-instance v0, Lbov$4;

    invoke-direct {v0, p0, p2}, Lbov$4;-><init>(Lbov;Lcma;)V

    .line 221
    .local v0, "handler":Lcmg;, "Lcmg<Lbpp;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 222
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 223
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "latestTime is invalid"

    .line 11033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->getLatestPost(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 265
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Lbov$7;

    invoke-direct {v0, p0, p2}, Lbov$7;-><init>(Lbov;Lcma;)V

    .line 274
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 275
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 276
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 14033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->shieldPost(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final f(Ljava/lang/Long;Lcma;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 284
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    new-instance v0, Lbov$8;

    invoke-direct {v0, p0, p2}, Lbov$8;-><init>(Lbov;Lcma;)V

    .line 293
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;

    .line 294
    .local v1, "service":Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 295
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 15033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/services/IDLSkynetService;->cancelShieldPost(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
