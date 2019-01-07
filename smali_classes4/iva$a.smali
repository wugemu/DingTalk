.class public final Liva$a;
.super Lcom/android/camera/MonitoredActivity$a;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/camera/MonitoredActivity;

.field final b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/MonitoredActivity;Ljava/lang/Runnable;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/camera/MonitoredActivity$a;-><init>()V

    .line 406
    new-instance v0, Liva$a$1;

    invoke-direct {v0, p0}, Liva$a$1;-><init>(Liva$a;)V

    iput-object v0, p0, Liva$a;->e:Ljava/lang/Runnable;

    .line 415
    iput-object p1, p0, Liva$a;->a:Lcom/android/camera/MonitoredActivity;

    .line 416
    iput-object p3, p0, Liva$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 417
    iput-object p2, p0, Liva$a;->c:Ljava/lang/Runnable;

    .line 418
    iget-object v0, p0, Liva$a;->a:Lcom/android/camera/MonitoredActivity;

    .line 1050
    iget-object v1, v0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    iget-object v0, v0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    iput-object p4, p0, Liva$a;->d:Landroid/os/Handler;

    .line 420
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 435
    iget-object v0, p0, Liva$a;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 436
    iget-object v0, p0, Liva$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Liva$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Liva$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 447
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Liva$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->hide()V

    .line 442
    return-void
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Liva$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v0, p0, Liva$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Liva$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liva$a;->d:Landroid/os/Handler;

    iget-object v2, p0, Liva$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
