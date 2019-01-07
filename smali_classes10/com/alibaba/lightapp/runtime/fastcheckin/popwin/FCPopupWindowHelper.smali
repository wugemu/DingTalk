.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;
.super Ljava/lang/Enum;
.source "FCPopupWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

.field private static final ATTEND_APP_ID:Ljava/lang/String; = "158"

.field private static final FAST_CHECKIN_POPUP_WIN_TAG:Ljava/lang/String; = "fast_checkin_popup"

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

.field private static final MAX_PROGRESS:I = 0x64

.field private static final SMALL_FAST_CHECKIN_POPUP_WIN_TAG:Ljava/lang/String; = "small_fast_checkin_popup"

.field private static final TAG:Ljava/lang/String; = "FCPopupWindowHelper"

.field private static final TOTAL_TIME:I = 0xbb8

.field private static final mRunning:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lhhn;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWaiting:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lhhn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .line 36
    new-array v0, v3, [Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mWaiting:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mRunning:Ljava/util/concurrent/LinkedBlockingQueue;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->finishCheckinPopWindow()V

    return-void
.end method

.method private clearPopupWindow(I)V
    .locals 4
    .param p1, "interval"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 231
    :cond_0
    if-lez p1, :cond_1

    .line 232
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$3;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$4;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized finishCheckinPopWindow()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mRunning:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 87
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->triggerShowPopWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showCheckinResultPopWindow(Lhhd;Lhhn;)V
    .locals 12
    .param p1, "executor"    # Lhhd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fcResultObject"    # Lhhn;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 96
    const-string/jumbo v4, "fast_checkin"

    const-string/jumbo v5, "FCPopupWindowHelper"

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v2, "[FCPopupWindowHelper] showCheckinResultPopWindow offer success "

    aput-object v2, v6, v7

    if-nez p2, :cond_0

    move-object v2, v3

    :goto_0
    aput-object v2, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p2, :cond_1

    .line 99
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a(Lhhn;)Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    move-result-object v1

    .line 106
    .local v1, "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    :goto_1
    if-nez v1, :cond_4

    .line 107
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v4, "FCPopupWindowHelper"

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "[FCPopupWindowHelper] showCheckinResultPopWindow notifyObject is null, "

    aput-object v6, v5, v7

    if-nez p2, :cond_3

    :goto_2
    aput-object v3, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_3
    return-void

    .line 96
    .end local v1    # "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    :cond_0
    iget-wide v8, p2, Lhhn;->e:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    .line 1228
    iget-object v4, p1, Lhhd;->f:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    .line 101
    invoke-static {v2, v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;)Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    move-result-object v1

    .restart local v1    # "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    goto :goto_1

    .line 103
    .end local v1    # "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    goto :goto_1

    .line 107
    :cond_3
    iget-wide v6, p2, Lhhn;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 111
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 112
    .local v0, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 2033
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 113
    const-string/jumbo v2, "fast_checkin_popup"

    .line 2045
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 114
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;Lhhn;Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;Lhhd;)V

    .line 3037
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 216
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 223
    iget v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->e:I

    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->clearPopupWindow(I)V

    goto :goto_3
.end method

.method private declared-synchronized triggerShowPopWindow()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mRunning:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v3, "FCPopupWindowHelper"

    const-string/jumbo v4, "[FCPopupWindowHelper] FCManager triggerShowPopWindow is running"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mWaiting:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhn;

    .line 69
    .local v1, "result":Lhhn;
    if-nez v1, :cond_1

    .line 70
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v3, "FCPopupWindowHelper"

    const-string/jumbo v4, "[FCPopupWindowHelper] triggerShowPopWindow not result to show"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v1    # "result":Lhhn;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 73
    .restart local v1    # "result":Lhhn;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mRunning:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v3, v1, Lhhn;->d:Ljava/lang/String;

    iget-object v4, v1, Lhhn;->a:Ljava/lang/String;

    iget-wide v6, v1, Lhhn;->e:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->findPlanExecutor(Ljava/lang/String;Ljava/lang/String;J)Lhhd;

    move-result-object v0

    .line 75
    .local v0, "executor":Lhhd;
    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->showCheckinResultPopWindow(Lhhd;Lhhn;)V

    goto :goto_0

    .line 77
    .end local v0    # "executor":Lhhd;
    :cond_2
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v3, "FCPopupWindowHelper"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[FCPopupWindowHelper] triggerShowPopWindow running queue is full "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v1, Lhhn;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " size="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mRunning:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 78
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 77
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    return-object v0
.end method


# virtual methods
.method public final clearPopupWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$5;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$5;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public final tryShowCheckinPopWindow(Lhhn;)V
    .locals 3
    .param p1, "fcResultObject"    # Lhhn;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string/jumbo v0, "fast_checkin"

    const-string/jumbo v1, "FCPopupWindowHelper"

    const-string/jumbo v2, "[FCPopupWindowHelper] tryShowCheckinPopWindow fcResultObject is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->mWaiting:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->triggerShowPopWindow()V

    goto :goto_0
.end method
