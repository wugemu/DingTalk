.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic c:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->c:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1699
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->c:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1702
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;->c:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    const-string/jumbo v1, "profile_mobile_servicephone_click"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 1703
    return-void
.end method
