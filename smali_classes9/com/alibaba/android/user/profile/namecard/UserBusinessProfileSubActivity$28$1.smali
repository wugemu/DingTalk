.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 578
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    return-object p1
.end method