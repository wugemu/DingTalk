.class public final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4747
    .local p2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4748
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;->b:Ljava/util/List;

    .line 4749
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 4744
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5753
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 5765
    :cond_0
    :goto_0
    return v0

    .line 5756
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 5757
    const/4 v0, -0x1

    goto :goto_0

    .line 5760
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 5761
    const/4 v0, 0x1

    goto :goto_0

    .line 5764
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5768
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 5769
    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 5770
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;->b:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4744
    goto :goto_0
.end method
