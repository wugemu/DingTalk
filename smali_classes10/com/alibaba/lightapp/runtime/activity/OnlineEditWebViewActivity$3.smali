.class final Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$3;
.super Ljava/lang/Object;
.source "OnlineEditWebViewActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .line 1160
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "online_edit_destroy_fragments_delay_token"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1162
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "OnlineEditWebViewActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onReceiveValue and edit commands : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    const-string/jumbo v1, "true"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;Z)V

    .line 156
    return-void
.end method
