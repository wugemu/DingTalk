.class final Ldsf$1;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsf;->a(Landroid/app/Activity;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ldsf;


# direct methods
.method constructor <init>(Ldsf;Landroid/app/Activity;IIIIII)V
    .locals 0
    .param p1, "this$0"    # Ldsf;

    .prologue
    .line 123
    iput-object p1, p0, Ldsf$1;->h:Ldsf;

    iput-object p2, p0, Ldsf$1;->a:Landroid/app/Activity;

    iput p3, p0, Ldsf$1;->b:I

    iput p4, p0, Ldsf$1;->c:I

    iput p5, p0, Ldsf$1;->d:I

    iput p6, p0, Ldsf$1;->e:I

    iput p7, p0, Ldsf$1;->f:I

    iput p8, p0, Ldsf$1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "tpffmpeg"

    invoke-virtual {v0, v1}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v1, Lctk$i;->and_dynamic_video_so_loading:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Ldsf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 180
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    .line 1134
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v1

    const-string/jumbo v2, "MediaEncode"

    new-instance v0, Ldsf$1$1;

    invoke-direct {v0, p0}, Ldsf$1$1;-><init>(Ldsf$1;)V

    const-class v3, Lcjn$a;

    iget-object v4, p0, Ldsf$1;->a:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjn$a;

    invoke-virtual {v1, v2, v0}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 123
    return-void
.end method
