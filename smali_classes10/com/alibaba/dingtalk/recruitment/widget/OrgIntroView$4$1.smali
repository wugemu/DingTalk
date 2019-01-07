.class final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field final synthetic b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Z)Z

    .line 380
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->c(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    .line 383
    :cond_0
    return-void
.end method
