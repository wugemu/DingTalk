.class public Lbbt;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"


# static fields
.field private static volatile c:Lbbt;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "OneKeyDing"

    iput-object v0, p0, Lbbt;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "dingType"

    iput-object v0, p0, Lbbt;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a()Lbbt;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lbbt;->c:Lbbt;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lbbt;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lbbt;->c:Lbbt;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lbbt;

    invoke-direct {v0}, Lbbt;-><init>()V

    sput-object v0, Lbbt;->c:Lbbt;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lbbt;->c:Lbbt;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
    .locals 8
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "remindTime"    # J

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v0, "OneKeyDing"

    const-string/jumbo v1, "dingType"

    invoke-virtual {p1, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "isSilent"

    invoke-virtual {p1, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingFloatWindowCenter shouldHideNewDingPopupWindow match before, dingId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v6, Lbbt$3;

    invoke-direct {v6, p0, p1}, Lbbt$3;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 102
    .local v6, "mConfirmationStatusObserver":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;>;"
    new-instance v7, Lbbt$4;

    invoke-direct {v7, p0, p1}, Lbbt$4;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 112
    .local v7, "mFocusStatusObserver":Lckm$a;, "Lckm$a<Ljava/lang/Boolean;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbbt$5;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lbbt$5;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLckm$a;Lckm$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
