.class final Ldlx$4$1;
.super Ljava/lang/Object;
.source "PopupGalleryManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlx$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlx$4;


# direct methods
.method constructor <init>(Ldlx$4;)V
    .locals 0
    .param p1, "this$1"    # Ldlx$4;

    .prologue
    .line 245
    iput-object p1, p0, Ldlx$4$1;->a:Ldlx$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->a:Ldlx$a;

    iget v0, v0, Ldlx$a;->b:I

    if-ne v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->c(Ldlx;)Ldlx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->c(Ldlx;)Ldlx$b;

    move-result-object v0

    iget-object v1, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v1, v1, Ldlx$4;->a:Ldlx$a;

    iget-object v1, v1, Ldlx$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldlx$b;->onClick(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()V

    .line 261
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->a:Ldlx$a;

    iget v0, v0, Ldlx$a;->b:I

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->a:Ldlx$a;

    iput-boolean v1, v0, Ldlx$a;->a:Z

    .line 254
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_pic_encoding:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Ldlx$4$1;->a:Ldlx$4;

    iget-object v0, v0, Ldlx$4;->a:Ldlx$a;

    iget v0, v0, Ldlx$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    sget v0, Lctk$i;->dt_im_pic_compress_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
