.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iput-object p4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 757
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 762
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_1
    const/4 v2, 0x0

    .line 766
    .local v2, "titleName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    if-eqz v3, :cond_2

    .line 767
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 769
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 773
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 774
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 775
    .local v0, "confItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    const/4 v1, 0x0

    .line 776
    .local v1, "finalNick":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 777
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->c:Ljava/lang/String;

    .line 778
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 779
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 791
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Ljava/lang/String;)V

    .line 795
    .end local v0    # "confItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v1    # "finalNick":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    .line 796
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 798
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 782
    .restart local v0    # "confItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .restart local v1    # "finalNick":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;->d:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 787
    :cond_7
    if-eqz v0, :cond_3

    .line 788
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    goto :goto_2
.end method
