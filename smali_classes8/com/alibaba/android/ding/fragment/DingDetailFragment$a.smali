.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$a;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 3147
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 3147
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4151
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 4153
    :cond_0
    if-nez p1, :cond_2

    .line 4161
    :cond_1
    :goto_0
    return v0

    .line 4155
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 4156
    goto :goto_0

    .line 4158
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 4160
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move v0, v1

    .line 4161
    goto :goto_0

    .line 4163
    :cond_4
    const/4 v0, 0x0

    .line 3147
    goto :goto_0
.end method
