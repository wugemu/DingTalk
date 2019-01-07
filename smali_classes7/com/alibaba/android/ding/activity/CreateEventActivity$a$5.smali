.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;JLjava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iput-wide p2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->a:J

    iput-object p4, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 7
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1051
    if-nez p1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 1055
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget v2, Laxp$i;->dt_ding_person_meeting_time_conflict_AT_AT:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;->c:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget v2, Laxp$i;->dt_ding_one_person_meeting_time_conflict_AT:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1068
    return-void
.end method
