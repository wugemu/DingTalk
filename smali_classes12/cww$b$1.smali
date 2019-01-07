.class final Lcww$b$1;
.super Ljava/lang/Object;
.source "RemoveMyAddedMembersAdapter.java"

# interfaces
.implements Ldht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcww$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcww$b;


# direct methods
.method constructor <init>(Lcww$b;)V
    .locals 0
    .param p1, "this$1"    # Lcww$b;

    .prologue
    .line 123
    iput-object p1, p0, Lcww$b$1;->a:Lcww$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 6
    .param p1, "nameWrapper"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    if-eqz p1, :cond_1

    .line 1055
    iget-object v1, p1, Lckl;->a:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcww$b$1;->a:Lcww$b;

    iget-object v2, v2, Lcww$b;->i:Lcww;

    invoke-static {v2}, Lcww;->b(Lcww;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    iget-wide v2, p1, Lckl;->c:J

    .line 127
    iget-object v1, p0, Lcww$b$1;->a:Lcww$b;

    .line 1103
    iget-wide v4, v1, Lcww$b;->f:J

    .line 127
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2059
    iget-wide v2, p1, Lckl;->b:J

    .line 127
    iget-object v1, p0, Lcww$b$1;->a:Lcww$b;

    .line 2103
    iget-wide v4, v1, Lcww$b;->h:J

    .line 127
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 128
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcww$b$1;->a:Lcww$b;

    .line 3103
    iget-wide v2, v2, Lcww$b;->f:J

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 129
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcww$b$1;->a:Lcww$b;

    .line 4103
    iget-object v1, v1, Lcww$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 130
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcww$b$1;->a:Lcww$b;

    .line 5103
    iget-object v1, v1, Lcww$b;->b:Landroid/widget/TextView;

    .line 6039
    iget-object v2, p1, Lckl;->d:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method
