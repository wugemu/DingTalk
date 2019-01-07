.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

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
    .line 234
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2167
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 244
    return-void
.end method
