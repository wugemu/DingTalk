.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/MoreMenuDialog;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/user/widget/MoreMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 3845
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3848
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->dismiss()V

    .line 3850
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 3852
    .local v7, "item":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$63;->a:[I

    invoke-virtual {v7}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 3884
    :goto_0
    return-void

    .line 3855
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    .line 3856
    .local v2, "uid":J
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->P(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->getValue()I

    move-result v4

    .line 3857
    .local v4, "source":I
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "keyword"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3858
    .local v6, "searchKey":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    .line 3859
    const-string/jumbo v1, "UserProfileActivity, onOptionsItemSelected,SEND_FRIEND_REQUEST_AGAIN,uid 0"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lfxo;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3861
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->Q(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v1 .. v6}, Lflz;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3855
    .end local v2    # "uid":J
    .end local v4    # "source":I
    .end local v6    # "searchKey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    goto :goto_1

    .line 3856
    .restart local v2    # "uid":J
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->P(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->getValue()I

    move-result v4

    goto :goto_2

    .line 3864
    .end local v2    # "uid":J
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->x(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v9

    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->w(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v5, v9, v10}, Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZLjava/lang/String;)V

    goto :goto_0

    .line 3867
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3868
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v8, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;-><init>()V

    .line 3869
    .local v8, "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3870
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    .line 3871
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    .line 3872
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v10, v8, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    .line 3874
    :cond_3
    const-string/jumbo v1, "person_name_card"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3875
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3878
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v8    # "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$49;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->R(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto/16 :goto_0

    .line 3852
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
