.class public final Lctn;
.super Ljava/lang/Object;
.source "ConversationMemberAdminTopByNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldqw;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ldqw;

.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldqw;Ljava/util/List;)V
    .locals 1
    .param p1, "conversationOwner"    # Ldqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldqw;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "mAdminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lctn;->a:Ldqw;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lctn;->b:Ljava/util/Set;

    .line 32
    :cond_0
    return-void
.end method

.method private a(Ldqw;Ljava/lang/String;)C
    .locals 7
    .param p1, "user"    # Ldqw;
    .param p2, "pinyin"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x23

    .line 70
    invoke-static {p2, v6}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 71
    .local v0, "alpha":C
    iget-object v1, p0, Lctn;->a:Ldqw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lctn;->a:Ldqw;

    iget-object v1, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v1, p0, Lctn;->a:Ldqw;

    iget-object v1, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lctn;->b:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lctn;->b:Ljava/util/Set;

    iget-object v2, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    if-ne v0, v6, :cond_0

    .line 76
    const/16 v0, 0x7b

    goto :goto_0
.end method

.method private static a(Ldqw;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ldqw;

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Ldqw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Ldqw;->c:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 17
    check-cast p1, Ldqw;

    check-cast p2, Ldqw;

    .line 1036
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1037
    const/4 v0, 0x0

    .line 1055
    :cond_0
    :goto_0
    return v0

    .line 1038
    :cond_1
    if-eqz p1, :cond_0

    .line 1040
    if-eqz p2, :cond_3

    .line 1044
    invoke-static {p1}, Lctn;->a(Ldqw;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {p2}, Lctn;->a(Ldqw;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-direct {p0, p1, v1}, Lctn;->a(Ldqw;Ljava/lang/String;)C

    move-result v3

    .line 1048
    invoke-direct {p0, p2, v2}, Lctn;->a(Ldqw;Ljava/lang/String;)C

    move-result v4

    .line 1049
    if-ne v3, v4, :cond_2

    .line 1050
    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1055
    :cond_2
    if-gt v3, v4, :cond_0

    :cond_3
    const/4 v0, -0x1

    .line 17
    goto :goto_0
.end method
