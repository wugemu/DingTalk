.class public final Lheh;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# static fields
.field private static g:Lheh;


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

.field public b:Landroid/view/WindowManager;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lheh;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lheh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lheh;->g:Lheh;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lheh;

    invoke-direct {v0}, Lheh;-><init>()V

    sput-object v0, Lheh;->g:Lheh;

    .line 46
    :cond_0
    sget-object v0, Lheh;->g:Lheh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
