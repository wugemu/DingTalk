.class public final Lbim$1;
.super Ljava/lang/Object;
.source "DingMemberHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic c:Lbim;


# direct methods
.method public constructor <init>(Lbim;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lbim;

    .prologue
    .line 133
    iput-object p1, p0, Lbim$1;->c:Lbim;

    iput-object p2, p0, Lbim$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lbim$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 1028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 1137
    iget-object v3, v0, Layc;->c:Ljava/util/HashMap;

    .line 136
    iget-object v0, p0, Lbim$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 2028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 2101
    iget-object v0, v0, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 137
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 138
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 3028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 3121
    iget v0, v0, Layc;->f:I

    .line 139
    iget-object v3, p0, Lbim$1;->c:Lbim;

    .line 4028
    iget-object v3, v3, Lbim;->b:Layc;

    .line 4101
    iget-object v3, v3, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 139
    invoke-virtual {v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 140
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 5028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 5137
    iget-object v3, v0, Layc;->c:Ljava/util/HashMap;

    .line 140
    iget-object v0, p0, Lbim$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 6028
    iget-object v3, v0, Lbim;->g:Landroid/widget/CheckBox;

    .line 141
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 7028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 7121
    iget v0, v0, Layc;->f:I

    .line 142
    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 8028
    iget-object v0, v0, Lbim;->a:Landroid/app/Activity;

    .line 143
    sget v3, Laxp$i;->choose_limit:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lbim$1;->c:Lbim;

    .line 9028
    iget-object v4, v4, Lbim;->b:Layc;

    .line 9121
    iget v4, v4, Layc;->f:I

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_2
    return-void

    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    move v0, v2

    .line 140
    goto :goto_0

    .end local p1    # "v":Landroid/view/View;
    :cond_2
    move v0, v2

    .line 141
    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 10028
    iget-object v0, v0, Lbim;->a:Landroid/app/Activity;

    .line 145
    iget-object v3, p0, Lbim$1;->c:Lbim;

    .line 11028
    iget-object v3, v3, Lbim;->b:Layc;

    .line 11125
    iget v3, v3, Layc;->g:I

    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lbim$1;->c:Lbim;

    .line 12028
    iget-object v4, v4, Lbim;->b:Layc;

    .line 12121
    iget v4, v4, Layc;->f:I

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 13028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 13101
    iget-object v0, v0, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 148
    iget-object v1, p0, Lbim$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_2

    .line 151
    :cond_5
    iget-object v0, p0, Lbim$1;->c:Lbim;

    .line 14028
    iget-object v0, v0, Lbim;->b:Layc;

    .line 14101
    iget-object v0, v0, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 151
    iget-object v1, p0, Lbim$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_2
.end method
