.class final Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;
.super Ljava/lang/Object;
.source "ListenPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/service/ListenPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "gotoConfPanel":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->a:Ljava/lang/String;

    .line 497
    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 500
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->b:Z

    if-eqz v1, :cond_1

    .line 501
    if-eqz v0, :cond_3

    .line 502
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    const/4 v2, 0x1

    .line 1067
    iput-boolean v2, v1, Levi;->u:Z

    .line 507
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 508
    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;-><init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :cond_2
    return-void

    .line 504
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    const/4 v2, 0x0

    .line 2067
    iput-boolean v2, v1, Levi;->u:Z

    goto :goto_0
.end method
