.class final Lbnv$8;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnv;->b(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
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

.field final synthetic b:J

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lbnv;


# direct methods
.method constructor <init>(Lbnv;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;JLandroid/widget/TextView;)V
    .locals 1
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 917
    iput-object p1, p0, Lbnv$8;->d:Lbnv;

    iput-object p2, p0, Lbnv$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-wide p3, p0, Lbnv$8;->b:J

    iput-object p5, p0, Lbnv$8;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 917
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1920
    if-eqz p1, :cond_0

    .line 1921
    iget-object v0, p0, Lbnv$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1924
    iget-wide v2, p0, Lbnv$8;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1926
    iget-object v0, p0, Lbnv$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2167
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1927
    iget-object v0, p0, Lbnv$8;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnv$8;->d:Lbnv;

    invoke-static {v0}, Lbnv;->d(Lbnv;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lbnv$8;->d:Lbnv;

    invoke-static {v0}, Lbnv;->d(Lbnv;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    .line 1933
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1934
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1935
    iget-object v1, p0, Lbnv$8;->d:Lbnv;

    invoke-static {v1}, Lbnv;->d(Lbnv;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 948
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getUserProfile error code = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",exception = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-static {v3, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 949
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 944
    return-void
.end method
