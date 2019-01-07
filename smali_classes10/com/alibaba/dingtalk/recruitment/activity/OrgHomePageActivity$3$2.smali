.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$2;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 484
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->o(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 488
    return-void
.end method
