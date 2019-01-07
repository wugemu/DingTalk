.class public final Ldyc;
.super Ljava/lang/Object;
.source "ImgResAPIImpl.java"

# interfaces
.implements Ldyb;


# static fields
.field private static a:Ldyc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static declared-synchronized a()Ldyc;
    .locals 2

    .prologue
    .line 68
    const-class v1, Ldyc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldyc;->a:Ldyc;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ldyc;

    invoke-direct {v0}, Ldyc;-><init>()V

    sput-object v0, Ldyc;->a:Ldyc;

    .line 71
    :cond_0
    sget-object v0, Ldyc;->a:Ldyc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JLcma;)V
    .locals 5
    .param p1, "version"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ldrb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "listener":Lcma;, "Lcma<Ldrb;>;"
    new-instance v0, Ldyc$9;

    invoke-direct {v0, p0, p3}, Ldyc$9;-><init>(Ldyc;Lcma;)V

    .line 109
    .local v0, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionPackageModel;Ldrb;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 110
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    if-nez v1, :cond_0

    .line 111
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getEmotions(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;JJLcma;)V
    .locals 6
    .param p1, "factor"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "cursor"    # J
    .param p6, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JJ",
            "Lcma",
            "<",
            "Ldta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p8, "listener":Lcma;, "Lcma<Ldta;>;"
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 328
    .local v0, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ldyc$6;

    invoke-direct {v5, p0, p8}, Ldyc$6;-><init>(Ldyc;Lcma;)V

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->searchDynamicEmotionsWithCursor(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 335
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "dynamicEmotionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    if-nez p2, :cond_0

    .line 242
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v0, Ldyc$12;

    invoke-direct {v0, p0, p2}, Ldyc$12;-><init>(Ldyc;Lcma;)V

    .line 236
    .local v0, "handler":Lcmg;, "Lcmg<Ldsy;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 237
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "param is invalid"

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getDynamicEmotionById(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "loginAuthMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldra;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "apiEventListener":Lcma;, "Lcma<Ldra;>;"
    const/4 v4, 0x0

    .line 160
    new-instance v0, Ldyc$11;

    invoke-direct {v0, p0, p4}, Ldyc$11;-><init>(Ldyc;Lcma;)V

    .line 166
    .local v0, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;Ldra;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 167
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "param is invalid"

    .line 4033
    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-interface {v1, v4, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->addLoginAuthEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "authMediaId"    # Ljava/lang/String;
    .param p4, "authEntity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldra;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Ldra;>;"
    const/4 v1, 0x0

    .line 143
    new-instance v5, Ldyc$10;

    invoke-direct {v5, p0, p5}, Ldyc$10;-><init>(Ldyc;Lcma;)V

    .line 149
    .local v5, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;Ldra;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 150
    .local v0, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "param is invalid"

    .line 3033
    invoke-virtual {v5, v2, v3, v1}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 154
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->addImAuthEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    .local p1, "emotionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    new-instance v0, Ldyc$1;

    invoke-direct {v0, p0, p2}, Ldyc$1;-><init>(Ldyc;Lcma;)V

    .line 87
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Long;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 88
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-nez v1, :cond_1

    .line 89
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "param is invalid"

    .line 1036
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->removeCustomEmotions(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
