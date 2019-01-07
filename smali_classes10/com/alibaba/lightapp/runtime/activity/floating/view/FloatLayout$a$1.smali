.class final Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;
.super Ljava/lang/Object;
.source "FloatLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
