.class public Lfan;
.super Ljava/lang/Object;
.source "DingTalkI18nCommonAPIImpl.java"

# interfaces
.implements Lezr;


# static fields
.field private static a:Lezr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lezr;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lfan;->a:Lezr;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lfan;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lfan;->a:Lezr;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lfan;

    invoke-direct {v0}, Lfan;-><init>()V

    sput-object v0, Lfan;->a:Lezr;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lfan;->a:Lezr;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/TimezoneInfosObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/TimezoneInfosObject;>;"
    new-instance v0, Lfan$1;

    invoke-direct {v0, p0, p2}, Lfan$1;-><init>(Lfan;Lcma;)V

    .line 40
    .local v0, "handler":Lcmg;, "Lcmg<Lfqp;Lcom/alibaba/android/user/model/TimezoneInfosObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/DingTalkI18nCommonIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/DingTalkI18nCommonIService;

    .line 41
    .local v1, "service":Lcom/alibaba/android/user/idl/services/DingTalkI18nCommonIService;
    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/DingTalkI18nCommonIService;->getNewestTimezoneInfos(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
