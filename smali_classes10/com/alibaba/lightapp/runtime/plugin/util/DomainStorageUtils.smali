.class public Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;
.super Ljava/lang/Object;
.source "DomainStorageUtils.java"


# static fields
.field public static final ONE_DOMAIN_MAX_SIZE:I = 0x10b0760

.field private static final ONE_KEY_MAX_SIZE:I = 0x55730

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p2, v2, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "domainKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;

    invoke-direct {v3, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    if-eqz p2, :cond_1

    .line 110
    invoke-interface {p2, v2, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "domainKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;

    invoke-direct {v3, v0, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    if-eqz p4, :cond_1

    .line 58
    invoke-interface {p4, v1, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 63
    .local v6, "valueLength":I
    const v0, 0x55730

    if-le v6, v0, :cond_3

    if-nez p3, :cond_3

    .line 64
    if-eqz p4, :cond_2

    .line 65
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "once can only store up to 1M value"

    invoke-interface {p4, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "DomainStorage one key size :"

    aput-object v4, v2, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_3
    new-array v3, v7, [I

    .line 70
    .local v3, "domainSize":[I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v5

    .line 71
    aget v0, v3, v5

    const v1, 0x10b0760

    if-le v0, v1, :cond_5

    if-nez p3, :cond_5

    .line 72
    if-eqz p4, :cond_4

    .line 73
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "single domain name can only store up to 50M value"

    invoke-interface {p4, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_4
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "DomainStorage domainSize:"

    aput-object v4, v2, v5

    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_5
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
