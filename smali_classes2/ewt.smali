.class public Lewt;
.super Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;
.source "TeleFloatingVideoManager.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lewt;


# instance fields
.field public a:Z

.field private d:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

.field private e:Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

.field private f:Z

.field private g:Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lewt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewt;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewt;->f:Z

    iput-boolean v0, p0, Lewt;->a:Z

    .line 62
    return-void
.end method

.method static synthetic a(Lewt;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 1
    .param p0, "x0"    # Lewt;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lewt;->d:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    return-object v0
.end method

.method static synthetic a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;
    .locals 1
    .param p0, "x0"    # Lewt;

    .prologue
    .line 37
    iget-object v0, p0, Lewt;->e:Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    return-object v0
.end method

.method static synthetic a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;
    .locals 0
    .param p0, "x0"    # Lewt;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    .prologue
    .line 37
    iput-object p1, p0, Lewt;->e:Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    return-object p1
.end method

.method static synthetic a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;
    .locals 0
    .param p0, "x0"    # Lewt;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    .prologue
    .line 37
    iput-object p1, p0, Lewt;->g:Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    return-object p1
.end method

.method public static a()Lewt;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lewt;->c:Lewt;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lewt;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lewt;->c:Lewt;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    sput-object v0, Lewt;->c:Lewt;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lewt;->c:Lewt;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;Z)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;
    .param p2, "enable"    # Z

    .prologue
    .line 97
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_0

    .line 98
    iput-boolean p2, p0, Lewt;->a:Z

    .line 99
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_1

    .line 100
    iput-boolean p2, p0, Lewt;->f:Z

    .line 102
    :cond_1
    return-void
.end method

.method static synthetic b(Lewt;)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .locals 1
    .param p0, "x0"    # Lewt;

    .prologue
    .line 37
    iget-object v0, p0, Lewt;->d:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lewt;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;
    .locals 1
    .param p0, "x0"    # Lewt;

    .prologue
    .line 37
    iget-object v0, p0, Lewt;->g:Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    return-object v0
.end method

.method private c(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)Z
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 88
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_0

    .line 89
    iget-boolean v0, p0, Lewt;->a:Z

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lewt;->f:Z

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lewt;->c(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lewt;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;Z)V

    .line 110
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewt$1;

    invoke-direct {v1, p0, p1}, Lewt$1;-><init>(Lewt;Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lewt;->c(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lewt;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;Z)V

    .line 146
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewt$2;

    invoke-direct {v1, p0, p1}, Lewt$2;-><init>(Lewt;Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V
    .locals 2
    .param p1, "userWindowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "notifyRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lewt;->d:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 176
    if-eqz p2, :cond_0

    iget-object v0, p0, Lewt;->e:Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lewt;->e:Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 67
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lewt;->d(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 76
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne p1, v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lewt;->e(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
