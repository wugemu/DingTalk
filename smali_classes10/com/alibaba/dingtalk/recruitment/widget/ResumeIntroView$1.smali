.class final Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;
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
    .line 92
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;->a()V

    .line 98
    :cond_0
    return-void
.end method
