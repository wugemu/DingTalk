.class public Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;
.super Landroid/app/Service;
.source "FloatMonkService.java"

# interfaces
.implements Lhef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v0

    .line 7115
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 7116
    iget-object v1, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    if-eqz v1, :cond_2

    .line 7117
    iget-object v1, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .line 7197
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 7198
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v2

    .line 8160
    iget-object v2, v2, Lheh;->d:Ljava/lang/String;

    .line 7199
    invoke-static {v2}, Lhrj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 7200
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7203
    :cond_0
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 7204
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b:Landroid/widget/TextView;

    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v2

    .line 8164
    iget-object v2, v2, Lheh;->e:Ljava/lang/String;

    .line 7204
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7118
    :cond_1
    iget-object v1, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->invalidate()V

    .line 7120
    :try_start_0
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    iget-object v2, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v0, v0, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7123
    :cond_2
    :goto_0
    return-void

    .line 7121
    :catch_0
    move-exception v0

    .line 7122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lheg;)V
    .locals 2
    .param p0, "floatMonkOnClickListener"    # Lheg;

    .prologue
    .line 52
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v0

    .line 6084
    iget-object v1, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    if-eqz v1, :cond_0

    .line 6085
    iget-object v0, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .line 6192
    iput-object p0, v0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->c:Lheg;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;-><init>(Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x2

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 1163
    iput-object p0, v0, Lhee;->d:Lhef;

    .line 2086
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 3055
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    .line 3108
    iget-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 3109
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    .line 3111
    :cond_0
    iget-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    .line 3057
    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .line 3058
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->b()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3061
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3064
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3065
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3068
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x208

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3072
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3074
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0}, Lhcn;->b(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {p0, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3075
    iget-object v2, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0}, Lhcn;->c(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x42d80000    # 108.0f

    invoke-static {p0, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43080000    # 136.0f

    .line 3076
    invoke-static {p0, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3078
    iget-object v2, v1, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v3, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 3080
    iget-object v2, v1, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v1, v1, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4090
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 4091
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 5094
    const/4 v0, 0x1

    .line 5095
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 5096
    iget-object v0, v1, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->isAttachedToWindow()Z

    move-result v0

    .line 5098
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 5099
    iget-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    iget-object v2, v1, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5100
    const/4 v0, 0x0

    iput-object v0, v1, Lheh;->b:Landroid/view/WindowManager;

    .line 39
    :cond_1
    return-void
.end method
