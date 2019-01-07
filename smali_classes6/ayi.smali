.class public final Layi;
.super Laxr;
.source "DingReceiverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laxr",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Laxr;-><init>(Landroid/app/Activity;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 28
    if-nez p2, :cond_2

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;

    iget-object v4, p0, Layi;->a:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;
    const/4 v4, 0x0

    sget-object v6, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_M:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->a(FLcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 35
    :goto_0
    iget-object v4, p0, Layi;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 36
    .local v3, "size":I
    if-ltz p1, :cond_1

    if-ge p1, v3, :cond_1

    .line 37
    iget-object v4, p0, Layi;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 38
    .local v2, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_1

    .line 39
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->setTitle(Ljava/lang/String;)V

    .line 41
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v4, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 42
    if-eqz p1, :cond_3

    move v4, v5

    :goto_1
    sget-object v6, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 43
    add-int/lit8 v4, v3, -0x1

    if-ne p1, v4, :cond_0

    .line 44
    sget-object v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 46
    :cond_0
    new-instance v4, Layi$1;

    invoke-direct {v4, p0, v2}, Layi$1;-><init>(Layi;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-object v0

    .end local v0    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;
    .end local v3    # "size":I
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    move-object v0, p2

    .line 32
    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;

    .restart local v0    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A1AvatarCell;
    goto :goto_0

    .line 42
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v3    # "size":I
    :cond_3
    const/16 v4, 0x8

    goto :goto_1
.end method
