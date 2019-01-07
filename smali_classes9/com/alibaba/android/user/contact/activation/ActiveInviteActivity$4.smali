.class final Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;
.super Lfxq;
.source "ActiveInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->b:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lfxq;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 141
    if-nez p2, :cond_0

    .line 142
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->b:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 148
    .local v1, "item":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->b:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v3, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1258
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->setTitle(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->setContent(Ljava/lang/String;)V

    .line 152
    sget v3, Lezg$g;->right_arrow:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(ILjava/lang/String;)V

    .line 154
    if-nez p1, :cond_1

    .line 155
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 156
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v6, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 165
    :goto_1
    return-object v0

    .end local v0    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;
    .end local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 144
    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;

    .restart local v0    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;
    goto :goto_0

    .line 157
    .restart local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 158
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 159
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    goto :goto_1

    .line 161
    :cond_2
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 162
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0, v6, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    goto :goto_1
.end method
