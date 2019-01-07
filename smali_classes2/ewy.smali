.class public Lewy;
.super Ljava/lang/Object;
.source "TeleVideoManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alivc/live/conf/AlivcVideoConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lewy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alivc/live/conf/AlivcVideoConf;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v1, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v1, :cond_2

    .line 24
    const-class v2, Lewy;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v1, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    if-nez v1, :cond_1

    .line 26
    invoke-static {}, Leyz;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    new-instance v1, Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-direct {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;-><init>()V

    sput-object v1, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    .line 28
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConfig;

    invoke-direct {v0}, Lcom/alivc/live/conf/AlivcVideoConfConfig;-><init>()V

    .line 30
    .local v0, "confConfig":Lcom/alivc/live/conf/AlivcVideoConfConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfConfig;->setEnableAudioControl(Z)V

    .line 1223
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v3, "voip_vconf_sdk_usgid2"

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, ""

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfConfig;->setExtras(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v1, p0, v0}, Lcom/alivc/live/conf/AlivcVideoConf;->init(Landroid/content/Context;Lcom/alivc/live/conf/AlivcVideoConfConfig;)V

    .line 35
    .end local v0    # "confConfig":Lcom/alivc/live/conf/AlivcVideoConfConfig;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_2
    sget-object v1, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lewy;->a:Ljava/lang/String;

    const-string/jumbo v1, "destroy video conf manager"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->destroy()V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lewy;->b:Lcom/alivc/live/conf/AlivcVideoConf;

    .line 46
    :cond_0
    return-void
.end method
