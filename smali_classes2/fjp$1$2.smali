.class final Lfjp$1$2;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfjp$1;


# direct methods
.method constructor <init>(Lfjp$1;)V
    .locals 0
    .param p1, "this$1"    # Lfjp$1;

    .prologue
    .line 141
    iput-object p1, p0, Lfjp$1$2;->a:Lfjp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 147
    :cond_0
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 149
    :cond_1
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v0

    invoke-interface {v0}, Lfir;->c()V

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v2

    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfjp$1$2;->a:Lfjp$1;

    iget-object v0, v0, Lfjp$1;->c:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
