.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->a:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1662
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->parentFragment:Lfvk;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->parentFragment:Lfvk;

    invoke-interface {v0}, Lfvk;->c()V

    .line 1665
    :cond_0
    return-void
.end method
