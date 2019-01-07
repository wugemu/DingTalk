.class public Lcto;
.super Ljava/lang/Object;
.source "ConversationMemberByNameComparator.java"

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


# direct methods
.method public constructor <init>(Ldqw;)V
    .locals 0
    .param p1, "conversationOwner"    # Ldqw;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcto;->a:Ldqw;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ldqw;Ldqw;)I
    .locals 11
    .param p1, "user1"    # Ldqw;
    .param p2, "user2"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/16 v10, 0x23

    .line 26
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 27
    const/4 v4, 0x0

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 28
    :cond_1
    if-eqz p1, :cond_0

    .line 30
    if-nez p2, :cond_2

    move v4, v5

    .line 31
    goto :goto_0

    .line 35
    :cond_2
    iget-object v6, p1, Ldqw;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 36
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v7, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "pinyin1":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v10}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 41
    .local v0, "alph1":C
    iget-object v6, p0, Lcto;->a:Ldqw;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcto;->a:Ldqw;

    iget-object v6, v6, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_6

    iget-object v6, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_6

    iget-object v6, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v8, p0, Lcto;->a:Ldqw;

    iget-object v8, v8, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 42
    const/4 v0, 0x0

    .line 47
    :cond_3
    :goto_2
    iget-object v6, p2, Ldqw;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 48
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v7, p2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "pinyin2":Ljava/lang/String;
    :goto_3
    invoke-static {v3, v10}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v1

    .line 53
    .local v1, "alph2":C
    iget-object v6, p0, Lcto;->a:Ldqw;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcto;->a:Ldqw;

    iget-object v6, v6, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_8

    iget-object v6, p2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_8

    iget-object v6, p2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v8, p0, Lcto;->a:Ldqw;

    iget-object v8, v8, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 54
    const/4 v1, 0x0

    .line 58
    :cond_4
    :goto_4
    if-ne v0, v1, :cond_9

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 38
    .end local v0    # "alph1":C
    .end local v1    # "alph2":C
    .end local v2    # "pinyin1":Ljava/lang/String;
    .end local v3    # "pinyin2":Ljava/lang/String;
    :cond_5
    iget-object v2, p1, Ldqw;->c:Ljava/lang/String;

    .restart local v2    # "pinyin1":Ljava/lang/String;
    goto :goto_1

    .line 43
    .restart local v0    # "alph1":C
    :cond_6
    if-ne v0, v10, :cond_3

    .line 44
    const/16 v0, 0x7b

    goto :goto_2

    .line 50
    :cond_7
    iget-object v3, p2, Ldqw;->c:Ljava/lang/String;

    .restart local v3    # "pinyin2":Ljava/lang/String;
    goto :goto_3

    .line 55
    .restart local v1    # "alph2":C
    :cond_8
    if-ne v1, v10, :cond_4

    .line 56
    const/16 v1, 0x7b

    goto :goto_4

    .line 62
    :cond_9
    if-gt v0, v1, :cond_0

    move v4, v5

    goto/16 :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ldqw;

    check-cast p2, Ldqw;

    invoke-virtual {p0, p1, p2}, Lcto;->a(Ldqw;Ldqw;)I

    move-result v0

    return v0
.end method
