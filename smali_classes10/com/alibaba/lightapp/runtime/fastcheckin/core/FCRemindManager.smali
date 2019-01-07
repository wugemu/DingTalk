.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
.super Ljava/lang/Enum;
.source "FCRemindManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;,
        Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

.field private static final CHECKIN_PRIVACY_DECLARE_JUMPURL:Ljava/lang/String; = "https://attend.dingtalk.com/attend/index.html?showmenu=false&dd_share=false&dd_progress=false#/fastcheck/privacyPolicy"

.field private static final CHECKIN_PRIVACY_DISAGREE_JUMPURL:Ljava/lang/String; = "https://tms.dingtalk.com/markets/dingtalk/zddkguizecg_copy"

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

.field private static final PREFS_CHECKIN_OLD_FAST_SWITCH:Ljava/lang/String; = "prefs_checkin_old_fast_switch"

.field private static final PREFS_CHECKIN_PRIVACY_AGREED:Ljava/lang/String; = "prefs_checkin_privacy_agreed"

.field private static final PREFS_CHECKIN_PRIVACY_DIALOG_SHOWED:Ljava/lang/String; = "prefs_checkin_privacy_dialog_showed"

.field private static final TAG:Ljava/lang/String; = "FCRemindManager"


# instance fields
.field private checkInListener:Lgvg;

.field private firstSendShowBroadcast:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oldFastCheckSwitch:Z

.field private privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->firstSendShowBroadcast:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->dismissPrivacyDialog()V

    return-void
.end method

.method private dismissPrivacyDialog()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->privacyDialog:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    .line 242
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    return-object v0
.end method


# virtual methods
.method public final agreePrivacy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 214
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "agreePrivacy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const-string/jumbo v0, "prefs_checkin_privacy_dialog_showed"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 216
    const-string/jumbo v0, "prefs_checkin_privacy_agreed"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 219
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V

    .line 220
    return-void
.end method

.method public final denyPrivacy(Landroid/content/Context;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFromH5"    # Z
    .param p3, "isH5Disagree"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 226
    const-string/jumbo v1, "FCRemindManager"

    const-string/jumbo v2, "denyPrivacy"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "isFromH5"

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "isH5Disagree"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v1, "prefs_checkin_privacy_dialog_showed"

    invoke-static {v1, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 230
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/zddkguizecg_copy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 235
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public final getCheckInRemindPlan(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/Set<Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;>;>;"
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1124
    :cond_1
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final getOldFastCheckSwitch()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    return v0
.end method

.method public final hasPrivacyAgreed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "prefs_checkin_privacy_agreed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final hasPrivacyShowed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    const-string/jumbo v0, "prefs_checkin_privacy_dialog_showed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const-string/jumbo v0, "prefs_checkin_old_fast_switch"

    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    .line 61
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "oldFastCheckSwitch"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final onCheckInRemind()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "onCheckInRemind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->checkInListener:Lgvg;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->checkInListener:Lgvg;

    invoke-virtual {v0}, Lgvg;->a()V

    .line 311
    :cond_0
    return-void
.end method

.method public final sendPrivacyBroadcast()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    .line 102
    .local v0, "delay":J
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->firstSendShowBroadcast:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-wide/16 v0, 0x1388

    .line 105
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V

    invoke-virtual {v2, v3, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public final setCheckInListener(Lgvg;)V
    .locals 0
    .param p1, "listener"    # Lgvg;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->checkInListener:Lgvg;

    .line 315
    return-void
.end method

.method public final setOldFastCheckSwitch(Lhhj;)V
    .locals 6
    .param p1, "planScheduleModel"    # Lhhj;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p1, Lhhj;->c:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    if-nez v0, :cond_0

    .line 77
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->oldFastCheckSwitch:Z

    .line 78
    const-string/jumbo v0, "prefs_checkin_old_fast_switch"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 79
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "setOldFastCheckSwitch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "corpId"

    aput-object v3, v2, v5

    iget-object v3, p1, Lhhj;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final showPrivacyDialog(Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogListener"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;
    .param p3, "isFromH5"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->hasPrivacyAgreed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    if-eqz p2, :cond_0

    .line 136
    invoke-interface {p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;->onAgree()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
