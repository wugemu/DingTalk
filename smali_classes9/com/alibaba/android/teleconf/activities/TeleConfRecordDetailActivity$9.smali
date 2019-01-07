.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 921
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 926
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 929
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 930
    move-object v3, v2

    goto :goto_0

    .line 932
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    if-eqz v3, :cond_3

    .line 936
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 937
    .local v0, "mediaId":Ljava/lang/String;
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V

    .line 952
    .end local v0    # "mediaId":Ljava/lang/String;
    .end local v3    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Leut;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 953
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Leut;

    move-result-object v4

    invoke-virtual {v4, v1}, Leut;->b(Ljava/util/List;)V

    .line 955
    :cond_4
    return-void
.end method
