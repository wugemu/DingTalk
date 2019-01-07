.class final Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;
.super Ljava/lang/Object;
.source "ResumeIntroView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lguq;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;-><init>(Landroid/content/Context;Lguq;)V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;)Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->c(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->show()V

    .line 105
    return-void
.end method
