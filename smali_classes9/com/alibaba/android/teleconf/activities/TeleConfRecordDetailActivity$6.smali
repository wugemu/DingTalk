.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 750
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "avatarName":Ljava/lang/String;
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "nickName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v2

    .line 754
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method
