.class public final Lctq;
.super Lcto;
.source "ConversationMemberWithRobotByNameComparator.java"


# direct methods
.method public constructor <init>(Ldqw;)V
    .locals 0
    .param p1, "conversationOwner"    # Ldqw;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcto;-><init>(Ldqw;)V

    .line 14
    return-void
.end method

.method private static a(Ldqw;)Z
    .locals 2
    .param p0, "user"    # Ldqw;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ldqw;)Z
    .locals 4
    .param p1, "user"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctq;->a:Ldqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctq;->a:Ldqw;

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v2, p0, Lctq;->a:Ldqw;

    iget-object v2, v2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ldqw;Ldqw;)I
    .locals 3
    .param p1, "user1"    # Ldqw;
    .param p2, "user2"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1}, Lctq;->b(Ldqw;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lctq;->b(Ldqw;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lctq;->b(Ldqw;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lctq;->b(Ldqw;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p1}, Lctq;->a(Ldqw;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lctq;->a(Ldqw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    :cond_3
    invoke-static {p1}, Lctq;->a(Ldqw;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lctq;->a(Ldqw;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 26
    goto :goto_0

    .line 28
    :cond_4
    invoke-super {p0, p1, p2}, Lcto;->a(Ldqw;Ldqw;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Ldqw;

    check-cast p2, Ldqw;

    invoke-virtual {p0, p1, p2}, Lctq;->a(Ldqw;Ldqw;)I

    move-result v0

    return v0
.end method
