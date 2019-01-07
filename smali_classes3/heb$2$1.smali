.class final Lheb$2$1;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Lhpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lheb$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lheb$2;


# direct methods
.method constructor <init>(Lheb$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lheb$2;

    .prologue
    .line 142
    iput-object p1, p0, Lheb$2$1;->b:Lheb$2;

    iput-object p2, p0, Lheb$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 145
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PhotoDelegate"

    const-string/jumbo v2, " ID_SAVEIMAGE to getResponse success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lheb$2$1;->b:Lheb$2;

    iget-object v0, v0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->d(Lheb;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lheb$2$1;->b:Lheb$2;

    iget-object v0, v0, Lheb$2;->a:Lheb;

    iget-object v1, p0, Lheb$2$1;->a:Ljava/lang/String;

    .line 1190
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "PhotoDelegate"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "_save"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lheb$3;

    invoke-direct {v3, v0, p1, v1}, Lheb$3;-><init>(Lheb;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 156
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PhotoDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ID_SAVEIMAGE to getResponse error: errorCode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lheb$2$1;->b:Lheb$2;

    iget-object v0, v0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->e(Lheb;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lheb$2$1;->b:Lheb$2;

    iget-object v0, v0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->f(Lheb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lheb$2$1;->b:Lheb$2;

    iget-object v0, v0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->g(Lheb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 166
    :cond_1
    sget v0, Lhdn$k;->pic_save_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
