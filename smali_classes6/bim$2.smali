.class public final Lbim$2;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic c:Lbim;


# direct methods
.method public constructor <init>(Lbim;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lbim;

    .prologue
    .line 157
    iput-object p1, p0, Lbim$2;->c:Lbim;

    iput-boolean p2, p0, Lbim$2;->a:Z

    iput-object p3, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    const/4 v1, 0x2

    iget-object v4, p0, Lbim$2;->c:Lbim;

    .line 1028
    iget-object v4, v4, Lbim;->b:Layc;

    .line 1093
    iget v4, v4, Layc;->b:I

    .line 160
    if-eq v1, v4, :cond_8

    .line 161
    iget-boolean v1, p0, Lbim$2;->a:Z

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 2028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 2101
    iget-object v1, v1, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 3028
    iget-object v4, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 165
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 4028
    iget-object v1, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 165
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 5028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 5137
    iget-object v1, v1, Layc;->c:Ljava/util/HashMap;

    .line 166
    iget-object v4, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lbim$2;->c:Lbim;

    .line 6028
    iget-object v5, v5, Lbim;->g:Landroid/widget/CheckBox;

    .line 166
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 7028
    iget-object v1, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 167
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 8028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 8121
    iget v1, v1, Layc;->f:I

    .line 168
    iget-object v4, p0, Lbim$2;->c:Lbim;

    .line 9028
    iget-object v4, v4, Lbim;->b:Layc;

    .line 9101
    iget-object v4, v4, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 168
    invoke-virtual {v4}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 169
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 10028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 10137
    iget-object v4, v1, Layc;->c:Ljava/util/HashMap;

    .line 169
    iget-object v1, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 11028
    iget-object v1, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 169
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 12028
    iget-object v4, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 170
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 13028
    iget-object v1, v1, Lbim;->g:Landroid/widget/CheckBox;

    .line 170
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 14028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 14121
    iget v1, v1, Layc;->f:I

    .line 171
    if-nez v1, :cond_5

    .line 172
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 15028
    iget-object v1, v1, Lbim;->a:Landroid/app/Activity;

    .line 172
    sget v4, Laxp$i;->choose_limit:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lbim$2;->c:Lbim;

    .line 16028
    iget-object v5, v5, Lbim;->b:Layc;

    .line 16121
    iget v5, v5, Layc;->f:I

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 165
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 169
    goto :goto_2

    :cond_4
    move v1, v3

    .line 170
    goto :goto_3

    .line 174
    :cond_5
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 17028
    iget-object v1, v1, Lbim;->a:Landroid/app/Activity;

    .line 174
    iget-object v4, p0, Lbim$2;->c:Lbim;

    .line 18028
    iget-object v4, v4, Lbim;->b:Layc;

    .line 18125
    iget v4, v4, Layc;->g:I

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lbim$2;->c:Lbim;

    .line 19028
    iget-object v5, v5, Lbim;->b:Layc;

    .line 19121
    iget v5, v5, Layc;->f:I

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_6
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 20028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 20101
    iget-object v1, v1, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 177
    iget-object v2, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .line 180
    :cond_7
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 21028
    iget-object v1, v1, Lbim;->b:Layc;

    .line 21101
    iget-object v1, v1, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 180
    iget-object v2, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "mSelectedUseModelList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lbim$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 22028
    iget-object v1, v1, Lbim;->a:Landroid/app/Activity;

    .line 187
    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "mSelectedUseModelList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {v1, v0}, Lbjm;->a(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 188
    iget-object v1, p0, Lbim$2;->c:Lbim;

    .line 23028
    iget-object v1, v1, Lbim;->a:Landroid/app/Activity;

    .line 188
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
