.class final Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;
.super Ljava/lang/Object;
.source "ListenPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;

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
    .line 512
    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v1}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    invoke-virtual {v1}, Levu;->b()V

    .line 513
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 1071
    iget-boolean v1, v1, Levi;->u:Z

    .line 513
    if-eqz v1, :cond_0

    .line 514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "isFromService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;->c:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 518
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
