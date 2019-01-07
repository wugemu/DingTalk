.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;
.super Ljava/lang/Enum;
.source "FCSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

.field private static final KEY_NAME:Ljava/lang/String; = "rapid_check_notification_enable_v4"

.field private static final KEY_NAME_ANDROID:Ljava/lang/String; = "rapid_check_notification_enable_a5"

.field private static final MODULE_NAME:Ljava/lang/String; = "swork"

.field private static final TAG:Ljava/lang/String; = "FCSwitchManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    return-object v0
.end method


# virtual methods
.method public final isClosed()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_auto_attendance_new_fast_checkin_enable"

    const/4 v6, 0x1

    .line 32
    invoke-virtual {v4, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, "enable":Z
    if-nez v0, :cond_1

    .line 49
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    return v2

    .line 39
    .restart local v0    # "enable":Z
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    const-string/jumbo v5, "swork"

    const-string/jumbo v6, "rapid_check_notification_enable_v4"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 40
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    const-string/jumbo v5, "swork"

    const-string/jumbo v6, "rapid_check_notification_enable_a5"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v2

    .line 42
    :goto_1
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 40
    goto :goto_1

    .line 43
    .end local v0    # "enable":Z
    :catch_0
    move-exception v1

    .line 44
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "FCSwitchManager"

    const-string/jumbo v5, "isClosed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "error"

    aput-object v7, v6, v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v3, v4, :cond_0

    .line 47
    throw v1
.end method

.method public final isOpened()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
