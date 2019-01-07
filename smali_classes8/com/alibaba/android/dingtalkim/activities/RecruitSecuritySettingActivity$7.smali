.class final Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$7;
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
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    const-class v0, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/BlacklistService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/im/BlacklistService;->addToBlacklist(JLcom/alibaba/wukong/Callback;)V

    .line 216
    return-void
.end method
