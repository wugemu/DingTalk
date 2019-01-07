.class final Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;
.super Ljava/lang/Object;
.source "OnlineEditWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 171
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "OnlineEditWebViewActivity"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "post delay to destroy fragments"

    aput-object v0, v3, v5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .line 173
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->f(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onReceiveValue has been called"

    :goto_0
    aput-object v0, v3, v4

    .line 172
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v0, v5}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;Z)V

    .line 176
    return-void

    .line 173
    :cond_0
    const-string/jumbo v0, "onReceiveValue has not been called"

    goto :goto_0
.end method
