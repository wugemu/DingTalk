.class final Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;
.super Ljava/lang/Object;
.source "RecruitSecuritySettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->updateNotification(ZLcom/alibaba/wukong/Callback;)V

    .line 237
    :cond_0
    return-void
.end method
