.class final Ldlx$3;
.super Ljava/lang/Object;
.source "PopupGalleryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlx$a;

.field final synthetic b:Ldlx;


# direct methods
.method constructor <init>(Ldlx;Ldlx$a;)V
    .locals 0
    .param p1, "this$0"    # Ldlx;

    .prologue
    .line 216
    iput-object p1, p0, Ldlx$3;->b:Ldlx;

    iput-object p2, p0, Ldlx$3;->a:Ldlx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-static {v0}, Ldlx;->b(Ldlx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Ldlx$3;->a:Ldlx$a;

    iget v0, v0, Ldlx$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-static {v0}, Ldlx;->c(Ldlx;)Ldlx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-static {v0}, Ldlx;->c(Ldlx;)Ldlx$b;

    move-result-object v0

    iget-object v1, p0, Ldlx$3;->a:Ldlx$a;

    iget-object v1, v1, Ldlx$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldlx$b;->onClick(Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()V

    .line 228
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-static {v0}, Ldlx;->a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Ldlx$3;->b:Ldlx;

    invoke-static {v0}, Ldlx;->a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 232
    :cond_1
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Ldlx$3;->a:Ldlx$a;

    iget v0, v0, Ldlx$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    sget v0, Lctk$i;->dt_im_pic_compress_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
