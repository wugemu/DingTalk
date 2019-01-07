.class final Lflt$6;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflt;


# direct methods
.method constructor <init>(Lflt;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 1056
    iput-object p1, p0, Lflt$6;->a:Lflt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1059
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_6

    .line 1060
    const/4 v1, 0x0

    .line 1061
    .local v1, "shouldNotify":Z
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1062
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 2060
    iget-object v3, v3, Lflt;->c:Ljava/util/List;

    .line 1062
    if-eqz v3, :cond_1

    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 3060
    iget-object v3, v3, Lflt;->c:Ljava/util/List;

    .line 1062
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1063
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 4060
    iget-object v3, v3, Lflt;->c:Ljava/util/List;

    .line 1063
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1064
    .local v0, "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 1065
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1066
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1067
    const/4 v1, 0x1

    .line 1072
    .end local v0    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_1
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 5060
    iget-object v3, v3, Lflt;->d:Ljava/util/List;

    .line 1072
    if-eqz v3, :cond_3

    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 6060
    iget-object v3, v3, Lflt;->d:Ljava/util/List;

    .line 1072
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1073
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 7060
    iget-object v3, v3, Lflt;->d:Ljava/util/List;

    .line 1073
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1074
    .restart local v0    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_2

    .line 1075
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1076
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1081
    .end local v0    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_3
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 8060
    iget-object v3, v3, Lflt;->g:Ljava/util/List;

    .line 1081
    if-eqz v3, :cond_5

    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 9060
    iget-object v3, v3, Lflt;->g:Ljava/util/List;

    .line 1081
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1082
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 10060
    iget-object v3, v3, Lflt;->g:Ljava/util/List;

    .line 1082
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1083
    .restart local v0    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_4

    .line 1084
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1085
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1086
    const/4 v1, 0x1

    .line 1091
    .end local v0    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_5
    if-eqz v1, :cond_6

    .line 1092
    iget-object v3, p0, Lflt$6;->a:Lflt;

    .line 11060
    iget-object v3, v3, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 1092
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g()V

    .line 1095
    .end local v1    # "shouldNotify":Z
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    return-void
.end method
