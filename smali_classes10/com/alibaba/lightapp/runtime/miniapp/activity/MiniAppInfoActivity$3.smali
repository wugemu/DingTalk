.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;
.super Lcmi;
.source "MiniAppInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhoc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryRpc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getMiniAppOpenInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "onException"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    check-cast p1, Lhoc;

    .line 1132
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;Lhoc;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
