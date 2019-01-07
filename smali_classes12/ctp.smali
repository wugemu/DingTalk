.class public final Lctp;
.super Ljava/lang/Object;
.source "ConversationMemberByOrgComparator.java"

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
.field private a:Ldqw;

.field private b:J


# direct methods
.method public constructor <init>(Ldqw;)V
    .locals 2
    .param p1, "conversationOwner"    # Ldqw;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lctp;->a:Ldqw;

    .line 20
    iget-object v0, p0, Lctp;->a:Ldqw;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lctp;->a:Ldqw;

    iget-wide v0, v0, Ldqw;->d:J

    iput-wide v0, p0, Lctp;->b:J

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    const/4 v0, -0x1

    .line 13
    check-cast p1, Ldqw;

    check-cast p2, Ldqw;

    .line 1028
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v2

    .line 1068
    :cond_1
    :goto_0
    return v1

    .line 1032
    :cond_2
    iget-object v3, p0, Lctp;->a:Ldqw;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lctp;->a:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_4

    .line 1033
    iget-object v3, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_3

    iget-object v3, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v3, p0, Lctp;->a:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    move v1, v0

    .line 1034
    goto :goto_0

    .line 1035
    :cond_3
    iget-object v3, p2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_4

    iget-object v3, p2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v3, p0, Lctp;->a:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f

    .line 1040
    :cond_4
    iget-wide v4, p1, Ldqw;->d:J

    .line 1041
    iget-wide v6, p2, Ldqw;->d:J

    .line 1042
    iget-wide v8, p0, Lctp;->b:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 1044
    iget-wide v8, p0, Lctp;->b:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_5

    move v1, v0

    .line 1045
    goto :goto_0

    .line 1046
    :cond_5
    iget-wide v8, p0, Lctp;->b:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_f

    .line 1051
    :cond_6
    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    .line 1052
    cmp-long v3, v4, v10

    if-eqz v3, :cond_f

    .line 1054
    cmp-long v3, v6, v10

    if-nez v3, :cond_7

    move v1, v0

    .line 1055
    goto :goto_0

    .line 1058
    :cond_7
    iget-object v0, p1, Ldqw;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Ldqw;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1059
    :cond_8
    iget-object v0, p2, Ldqw;->f:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p2, Ldqw;->e:Ljava/lang/String;

    .line 1060
    :goto_1
    iget-object v2, p1, Ldqw;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p1, Ldqw;->f:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_2
    move v1, v0

    .line 13
    goto/16 :goto_0

    .line 1059
    :cond_a
    iget-object v0, p2, Ldqw;->f:Ljava/lang/String;

    goto :goto_1

    .line 1064
    :cond_b
    iget-object v0, p1, Ldqw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Ldqw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v1, v2

    .line 1065
    goto/16 :goto_0

    .line 1067
    :cond_c
    iget-object v0, p2, Ldqw;->f:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p2, Ldqw;->e:Ljava/lang/String;

    .line 1068
    :goto_3
    iget-object v2, p1, Ldqw;->c:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v1, p1, Ldqw;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string/jumbo v0, ""

    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 1067
    :cond_e
    iget-object v0, p2, Ldqw;->f:Ljava/lang/String;

    goto :goto_3

    :cond_f
    move v0, v1

    .line 1068
    goto :goto_2
.end method
