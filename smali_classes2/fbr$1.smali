.class final Lfbr$1;
.super Ljava/lang/Object;
.source "ChannelApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbr;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

.field final synthetic b:Lfbr;


# direct methods
.method constructor <init>(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V
    .locals 0
    .param p1, "this$0"    # Lfbr;

    .prologue
    .line 120
    iput-object p1, p0, Lfbr$1;->b:Lfbr;

    iput-object p2, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isInOrgExtContact:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lfbr$1;->b:Lfbr;

    iget-object v1, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-static {v0, v1}, Lfbr;->a(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    goto :goto_0

    .line 129
    :cond_2
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 130
    .local v4, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    .line 143
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lfbr$1;->b:Lfbr;

    invoke-static {v1}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgId:J

    const-string/jumbo v5, "CHANNEL_APPLY"

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lfbr$1;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    goto :goto_1
.end method
