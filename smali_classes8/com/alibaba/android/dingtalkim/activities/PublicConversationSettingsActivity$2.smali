.class final Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;
.super Ljava/lang/Object;
.source "PublicConversationSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->c:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 124
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1127
    if-eqz p1, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->c:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->c:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "PublicConversationSettingsActivity getUserProfile failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 141
    return-void
.end method
