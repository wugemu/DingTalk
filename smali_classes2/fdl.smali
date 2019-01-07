.class public final Lfdl;
.super Ljava/lang/Object;
.source "CircleAPIImpl.java"

# interfaces
.implements Lfdj;


# static fields
.field private static final a:Lfdl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lfdl;

    invoke-direct {v0}, Lfdl;-><init>()V

    sput-object v0, Lfdl;->a:Lfdl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfdl;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lfdl;->a:Lfdl;

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
            "Lfer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 230
    .local p1, "callback":Lcma;, "Lcma<Lfer;>;"
    new-instance v0, Lfdl$1;

    invoke-direct {v0, p0, p1}, Lfdl$1;-><init>(Lfdl;Lcma;)V

    .line 237
    .local v0, "handler":Lcmg;, "Lcmg<Lfer;Lfer;>;"
    const-class v2, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;

    .line 238
    .local v1, "service":Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;
    if-nez v1, :cond_0

    .line 239
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;->getUserDefaultSettings(Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
    .locals 5
    .param p1, "loadParamModel"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 302
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    new-instance v0, Lfdl$5;

    invoke-direct {v0, p0, p2}, Lfdl$5;-><init>(Lfdl;Lcma;)V

    .line 312
    .local v0, "handler":Lcmg;, "Lcmg<Lfeo;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    const-class v2, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    .line 313
    .local v1, "service":Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 314
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 5033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->toIdl()Lfei;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;->loadShield(Lfei;Liyv;)V

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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 264
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v0, Lfdl$3;

    invoke-direct {v0, p0, p2}, Lfdl$3;-><init>(Lfdl;Lcma;)V

    .line 273
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    .line 274
    .local v1, "service":Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 275
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;->shieldPost(Ljava/lang/Long;Liyv;)V

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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 247
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfdl$2;

    invoke-direct {v0, p0, p2}, Lfdl$2;-><init>(Lfdl;Lcma;)V

    .line 254
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;

    .line 255
    .local v1, "service":Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;
    if-nez v1, :cond_0

    .line 256
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;->updateAlbumCover(Ljava/lang/String;Liyv;)V

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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 283
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    new-instance v0, Lfdl$4;

    invoke-direct {v0, p0, p2}, Lfdl$4;-><init>(Lfdl;Lcma;)V

    .line 292
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;

    .line 293
    .local v1, "service":Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;
    if-nez v1, :cond_2

    .line 294
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service == null"

    .line 4033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/connection/idl/services/IDLSkynetService;->cancelShieldPost(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
