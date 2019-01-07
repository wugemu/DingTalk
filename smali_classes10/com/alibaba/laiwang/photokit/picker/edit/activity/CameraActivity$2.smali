.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    .line 202
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(I)V

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->g(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-string/jumbo v1, "camera"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->h(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    goto :goto_1
.end method
