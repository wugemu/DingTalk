.class public final Lgvp;
.super Ljava/lang/Object;
.source "InvitationUnitFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dest"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    packed-switch p1, :pswitch_data_0

    .line 30
    :goto_0
    return-object v0

    .line 1034
    :pswitch_0
    new-instance v0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    .end local v0    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    invoke-direct {v0}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;-><init>()V

    .line 1035
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setPkgName(Ljava/lang/String;)V

    .line 1036
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setDest(I)V

    .line 1037
    sget v1, Lgvn$d;->ic_share_wx_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setIcon(I)V

    .line 1038
    if-eqz p0, :cond_0

    .line 1039
    sget v1, Lgvn$h;->dt_share_ding_word_to_weixin:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setTitle(Ljava/lang/String;)V

    .line 25
    .restart local v0    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    :cond_0
    goto :goto_0

    .line 1045
    :pswitch_1
    new-instance v0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    .end local v0    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    invoke-direct {v0}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;-><init>()V

    .line 1046
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setPkgName(Ljava/lang/String;)V

    .line 1047
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setDest(I)V

    .line 1048
    sget v1, Lgvn$d;->ic_share_qq_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setIcon(I)V

    .line 1049
    if-eqz p0, :cond_1

    .line 1050
    sget v1, Lgvn$h;->dt_share_ding_word_to_qq:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->setTitle(Ljava/lang/String;)V

    .line 27
    .restart local v0    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    :cond_1
    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
