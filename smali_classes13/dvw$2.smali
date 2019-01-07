.class final Ldvw$2;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvw;->a(Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

.field final synthetic b:Ldvw;


# direct methods
.method constructor <init>(Ldvw;Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 943
    iput-object p1, p0, Ldvw$2;->b:Ldvw;

    iput-object p2, p0, Ldvw$2;->a:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw$2;->a:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw$2;->a:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->clickUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Ldvw$2;->a:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->clickUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 949
    :cond_0
    return-void
.end method
