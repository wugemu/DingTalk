.class public final Lbal;
.super Ljava/lang/Object;
.source "ReceiverCheckInMeetingPresenter.java"

# interfaces
.implements Lbak$a;


# instance fields
.field a:Lcom/alibaba/android/ding/data/object/CheckInResultObject;

.field b:Lbak$b;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbak$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lbak$b;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbal;->c:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lbal;->b:Lbak$b;

    .line 28
    iget-object v0, p0, Lbal;->b:Lbak$b;

    invoke-interface {v0, p0}, Lbak$b;->setPresenter(Lcjd;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lbal;->a:Lcom/alibaba/android/ding/data/object/CheckInResultObject;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lbal;->c:Landroid/app/Activity;

    iget-object v1, p0, Lbal;->a:Lcom/alibaba/android/ding/data/object/CheckInResultObject;

    .line 2116
    iget-wide v2, v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->c:J

    .line 78
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "qrCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lbal;->b:Lbak$b;

    invoke-interface {v1}, Lbak$b;->b()V

    .line 47
    new-instance v0, Lbal$1;

    invoke-direct {v0, p0}, Lbal$1;-><init>(Lbal;)V

    .line 66
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/CheckInResultObject;>;"
    iget-object v1, p0, Lbal;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 67
    const-class v1, Lcma;

    iget-object v2, p0, Lbal;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/CheckInResultObject;>;"
    check-cast v0, Lcma;

    .line 69
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/CheckInResultObject;>;"
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 2067
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$113;

    invoke-direct {v3, v1, p1, v0}, Lbbp$113;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
