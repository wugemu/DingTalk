.class public Lfas;
.super Ljava/lang/Object;
.source "LoginApiImpl.java"


# static fields
.field private static b:Lfas;


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    iput-object v0, p0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 74
    return-void
.end method

.method static synthetic a(Lfas;)Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;
    .locals 1
    .param p0, "x0"    # Lfas;

    .prologue
    .line 63
    iget-object v0, p0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    return-object v0
.end method

.method public static a()Lfas;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lfas;->b:Lfas;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lfas;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lfas;->b:Lfas;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lfas;

    invoke-direct {v0}, Lfas;-><init>()V

    sput-object v0, Lfas;->b:Lfas;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    sget-object v0, Lfas;->b:Lfas;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 285
    .local p1, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;>;"
    new-instance v0, Lfas$2;

    invoke-direct {v0, p0, p1}, Lfas$2;-><init>(Lfas;Lcma;)V

    .line 294
    .local v0, "handler":Lcmg;, "Lcmg<Lcdm;Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;>;"
    iget-object v1, p0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->getFaceId(Liyv;)V

    .line 295
    return-void
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "platform"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    if-eqz p3, :cond_0

    .line 92
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Bad request param."

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Lfas$1;

    invoke-direct {v0, p0, p3}, Lfas$1;-><init>(Lfas;Lcma;)V

    .line 113
    .local v0, "handler":Lcmi;, "Lcmi<Ljava/lang/String;>;"
    iget-object v1, p0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->getAuthSign(Ljava/lang/String;ILiyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 361
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    if-eqz p3, :cond_1

    .line 364
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfas$6;

    invoke-direct {v3, p0, p3}, Lfas$6;-><init>(Lfas;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 373
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "mobile":Ljava/lang/String;
    new-instance v0, Lfas$7;

    invoke-direct {v0, p0, p3, v1}, Lfas$7;-><init>(Lfas;Lcma;Ljava/lang/String;)V

    .line 397
    .local v0, "handler":Lcmi;, "Lcmi<Lcgb;>;"
    iget-object v2, p0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->getUpstreamToken(Ljava/lang/String;Liyv;)V

    .line 398
    return-void
.end method
