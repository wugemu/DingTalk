.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    if-nez p2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const-string/jumbo v5, "activity_identify"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "idenfier":Ljava/lang/String;
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [J

    .line 152
    .local v4, "users":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 153
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 154
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_2

    .line 155
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    aput-wide v6, v4, v0

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    const-string/jumbo v5, "identify_ban_words_white"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V

    goto :goto_0

    .line 160
    :cond_4
    const-string/jumbo v5, "identify_ban_words_black"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;[J)V

    goto :goto_0
.end method
