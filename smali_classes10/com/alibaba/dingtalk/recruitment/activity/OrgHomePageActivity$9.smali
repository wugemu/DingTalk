.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$9;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$9;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$9;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(F)V

    .line 282
    return-void
.end method
