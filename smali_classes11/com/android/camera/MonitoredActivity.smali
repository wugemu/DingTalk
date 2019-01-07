.class public Lcom/android/camera/MonitoredActivity;
.super Lcom/android/camera/NoSearchActivity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MonitoredActivity$a;,
        Lcom/android/camera/MonitoredActivity$b;
    }
.end annotation


# instance fields
.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/MonitoredActivity$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/NoSearchActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/camera/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onDestroy()V

    .line 69
    iget-object v1, p0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MonitoredActivity$b;

    .line 70
    .local v0, "listener":Lcom/android/camera/MonitoredActivity$b;
    invoke-interface {v0}, Lcom/android/camera/MonitoredActivity$b;->a()V

    goto :goto_0

    .line 72
    .end local v0    # "listener":Lcom/android/camera/MonitoredActivity$b;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onStart()V

    .line 77
    iget-object v1, p0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MonitoredActivity$b;

    .line 78
    .local v0, "listener":Lcom/android/camera/MonitoredActivity$b;
    invoke-interface {v0}, Lcom/android/camera/MonitoredActivity$b;->b()V

    goto :goto_0

    .line 80
    .end local v0    # "listener":Lcom/android/camera/MonitoredActivity$b;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onStop()V

    .line 85
    iget-object v1, p0, Lcom/android/camera/MonitoredActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MonitoredActivity$b;

    .line 86
    .local v0, "listener":Lcom/android/camera/MonitoredActivity$b;
    invoke-interface {v0}, Lcom/android/camera/MonitoredActivity$b;->c()V

    goto :goto_0

    .line 88
    .end local v0    # "listener":Lcom/android/camera/MonitoredActivity$b;
    :cond_0
    return-void
.end method
