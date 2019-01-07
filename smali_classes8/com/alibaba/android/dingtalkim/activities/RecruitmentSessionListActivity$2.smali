.class Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "RecruitmentSessionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

.field final synthetic val$finalEntranceId:J


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;->val$finalEntranceId:J

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isFilter(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;->val$finalEntranceId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
