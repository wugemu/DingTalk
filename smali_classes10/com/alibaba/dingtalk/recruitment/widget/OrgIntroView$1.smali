.class final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    const-string/jumbo v0, "pref_org_home_page_should_show_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;->a()V

    .line 137
    :cond_0
    return-void
.end method
