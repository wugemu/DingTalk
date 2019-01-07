.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1042
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1050
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 1051
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1052
    .local v4, "nick":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leyv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1053
    .local v6, "destNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 1051
    .end local v4    # "nick":Ljava/lang/String;
    .end local v6    # "destNumber":Ljava/lang/String;
    :cond_2
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_1

    .line 1055
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leyv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1057
    .restart local v6    # "destNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
