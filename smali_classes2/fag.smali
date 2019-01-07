.class public Lfag;
.super Ljava/lang/Object;
.source "BusinessCardAPIImpl.java"

# interfaces
.implements Lezn;


# static fields
.field private static volatile a:Lfag;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lezn;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lfag;->a:Lfag;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lfag;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lfag;->a:Lfag;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lfag;

    invoke-direct {v0}, Lfag;-><init>()V

    sput-object v0, Lfag;->a:Lfag;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lfag;->a:Lfag;

    return-object v0

    .line 27
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 61
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lfag$2;

    invoke-direct {v0, p0, p1}, Lfag$2;-><init>(Lfag;Lcma;)V

    .line 68
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/BusinessCardIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/BusinessCardIService;

    .line 69
    .local v1, "service":Lcom/alibaba/android/user/idl/services/BusinessCardIService;
    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/BusinessCardIService;->getMyFavoriteBusinessCardUrl(Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;",
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
    .line 38
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;)Lcht;

    move-result-object v0

    .line 45
    .local v0, "model":Lcht;
    const-class v2, Lcom/alibaba/android/user/idl/services/BusinessCardIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/BusinessCardIService;

    .line 46
    .local v1, "service":Lcom/alibaba/android/user/idl/services/BusinessCardIService;
    if-eqz v1, :cond_0

    .line 49
    new-instance v2, Lfag$1;

    invoke-direct {v2, p0, p2}, Lfag$1;-><init>(Lfag;Lcma;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/user/idl/services/BusinessCardIService;->favoriteBusinessCard(Lcht;Liyv;)V

    goto :goto_0
.end method
