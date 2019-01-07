.class final Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;
.super Ljava/lang/Object;
.source "RecruitSecuritySettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->i(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/BlacklistService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/im/BlacklistService;->removeFromBlacklist(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
