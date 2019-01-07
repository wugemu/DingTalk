.class final Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$1;
.super Ljava/lang/Object;
.source "FloatMonkService.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v0

    .line 1129
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 1133
    :try_start_0
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    iget-object v0, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onEnterForeground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v0

    .line 1140
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 1145
    :try_start_0
    iget-object v1, v0, Lheh;->b:Landroid/view/WindowManager;

    iget-object v2, v0, Lheh;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v0, v0, Lheh;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
