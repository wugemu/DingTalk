.class final Lbtb$2;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsa;

.field final synthetic b:Lbsy$b;

.field final synthetic c:Lbtb;


# direct methods
.method constructor <init>(Lbtb;Lbsa;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbtb;

    .prologue
    .line 206
    iput-object p1, p0, Lbtb$2;->c:Lbtb;

    iput-object p2, p0, Lbtb$2;->a:Lbsa;

    iput-object p3, p0, Lbtb$2;->b:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 209
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v1}, Lbtb;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v1}, Lbtb;->s()V

    .line 213
    if-eqz p1, :cond_5

    .line 214
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    iget-object v1, v1, Lbtb;->b:Lbsw$b;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    iget-object v1, v1, Lbtb;->b:Lbsw$b;

    invoke-interface {v1, v4}, Lbsw$b;->d(Z)V

    .line 218
    :cond_2
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v1}, Lbtb;->j()V

    .line 219
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v1}, Lbtb;->n()V

    .line 222
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    iget-object v2, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v2}, Lbtb;->l()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.alibaba.android.dingtalk.ACTION_BLE_QUICK_SCAN"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lbtb$2;->a:Lbsa;

    iget-object v1, v1, Lbsa;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lbtb$2;->a:Lbsa;

    iget-object v2, v2, Lbsa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v2}, Lbtb;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 232
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lbtb$2;->b:Lbsy$b;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lbtb$2;->b:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 236
    :cond_4
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    invoke-virtual {v1}, Lbtb;->m()V

    goto :goto_0

    .line 238
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    iget-object v1, p0, Lbtb$2;->c:Lbtb;

    sget v2, Lbrx$g;->dt_door_guard_active_fail:I

    invoke-virtual {v1, v2}, Lbtb;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 241
    :cond_6
    iget-object v1, p0, Lbtb$2;->b:Lbsy$b;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lbtb$2;->b:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
