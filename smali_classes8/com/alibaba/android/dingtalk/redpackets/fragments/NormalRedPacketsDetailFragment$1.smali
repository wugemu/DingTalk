.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;
.super Ljava/lang/Object;
.source "NormalRedPacketsDetailFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

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
    .line 81
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    sget v3, Lcaj$f;->redpackets_tips_normal:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1167
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 81
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 96
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 91
    return-void
.end method
