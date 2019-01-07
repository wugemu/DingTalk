.class final Lfnz$1;
.super Ljava/lang/Object;
.source "ScreenShotFeedBack.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnz;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnz;


# direct methods
.method constructor <init>(Lfnz;)V
    .locals 0
    .param p1, "this$0"    # Lfnz;

    .prologue
    .line 45
    iput-object p1, p0, Lfnz$1;->a:Lfnz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Lcms;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    const-string/jumbo v2, "not MainLandChina"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->isLogin()Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    const-string/jumbo v2, "not login"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lfnz;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    const-string/jumbo v2, "setting closed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p1}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 65
    const-string/jumbo v2, "the file is not exist"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_4
    iget-object v2, p0, Lfnz$1;->a:Lfnz;

    iget-boolean v2, v2, Lfnz;->a:Z

    if-eqz v2, :cond_5

    .line 70
    const-string/jumbo v2, "get new screenshot and now processing"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_5
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 76
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    const-string/jumbo v2, "get new screenshot and now app is in background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_6
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_7

    .line 82
    const-string/jumbo v2, "get new screenshot and top activity is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_7
    const-string/jumbo v2, "get new screenshot and ScreenShotFeedBackDialog will show"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lfoa;

    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfoa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1063
    .local v1, "screenShotFeedBackDialog":Lfoa;
    iget-object v2, v1, Lfoa;->c:Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lfoa;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    invoke-static {}, Lfnz;->a()Lfnz;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfnz;->a:Z

    .line 1068
    iput v4, v1, Lfoa;->e:I

    .line 1069
    iget-object v2, v1, Lfoa;->d:Landroid/widget/ImageView;

    iget-object v3, v1, Lfoa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfoa;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lfoa;->f:J

    .line 1071
    invoke-virtual {v1}, Lfoa;->b()V

    .line 1073
    iget-object v2, v1, Lfoa;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x800055

    iget-object v4, v1, Lfoa;->c:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, v1, Lfoa;->c:Landroid/app/Activity;

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {v5, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lfoa;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
