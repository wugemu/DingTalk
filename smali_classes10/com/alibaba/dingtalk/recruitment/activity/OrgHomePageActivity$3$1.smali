.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->m(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a()V

    .line 466
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)V

    .line 471
    return-void
.end method
