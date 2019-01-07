.class public abstract Ldzf;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"

# interfaces
.implements Ldzh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldzf$a;,
        Ldzf$b;
    }
.end annotation


# static fields
.field protected static e:Lcom/alibaba/doraemon/statistics/Statistics;


# instance fields
.field protected a:Z

.field protected b:J

.field protected c:Landroid/os/PowerManager$WakeLock;

.field protected d:Landroid/app/Activity;

.field protected final f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, Ldzf;->f:Z

    .line 62
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Ldzf;->d:Landroid/app/Activity;

    .line 63
    iget-object v1, p0, Ldzf;->d:Landroid/app/Activity;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string/jumbo v2, "AbstractVoiceRecord"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    .line 69
    iget-object v1, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 71
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    sput-object v1, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 72
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-boolean v1, p0, Ldzf;->a:Z

    if-nez v1, :cond_1

    .line 77
    const/4 v0, 0x0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v1, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "AbstractVoiceRecord"

    const-string/jumbo v3, "mWakeLock.acquire()!"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1
    .param p1, "orderId"    # J

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Ldzf;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    const-string/jumbo v2, "mWakeLock.release();"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)Z
    .locals 1
    .param p1, "orderId"    # J

    .prologue
    .line 112
    invoke-virtual {p0}, Ldzf;->b()Z

    .line 115
    const/4 v0, 0x0

    return v0
.end method
