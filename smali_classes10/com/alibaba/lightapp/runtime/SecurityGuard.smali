.class public final Lcom/alibaba/lightapp/runtime/SecurityGuard;
.super Ljava/lang/Object;
.source "SecurityGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException;
    }
.end annotation


# static fields
.field private static c:Lcom/alibaba/lightapp/runtime/SecurityGuard;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a:Z

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->b:Z

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/lightapp/runtime/SecurityGuard;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alibaba/lightapp/runtime/SecurityGuard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/lightapp/runtime/SecurityGuard;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/SecurityGuard;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    .line 35
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a:Z

    if-eqz v0, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;-><init>(Lcom/alibaba/lightapp/runtime/SecurityGuard;Landroid/content/Context;Lcma;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method
