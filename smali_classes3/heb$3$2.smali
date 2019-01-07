.class final Lheb$3$2;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lheb$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/OutOfMemoryError;

.field final synthetic b:Lheb$3;


# direct methods
.method constructor <init>(Lheb$3;Ljava/lang/OutOfMemoryError;)V
    .locals 0
    .param p1, "this$1"    # Lheb$3;

    .prologue
    .line 218
    iput-object p1, p0, Lheb$3$2;->b:Lheb$3;

    iput-object p2, p0, Lheb$3$2;->a:Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lheb$3$2;->b:Lheb$3;

    iget-object v0, v0, Lheb$3;->c:Lheb;

    invoke-static {v0}, Lheb;->m(Lheb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lheb$3$2;->b:Lheb$3;

    iget-object v0, v0, Lheb$3;->c:Lheb;

    invoke-static {v0}, Lheb;->n(Lheb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 225
    :cond_0
    sget v0, Lhdn$k;->dt_lightapp_webview_save_photo_error_too_big:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 226
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PhotoDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveImageToPhone OutOfMemoryError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lheb$3$2;->a:Ljava/lang/OutOfMemoryError;

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
