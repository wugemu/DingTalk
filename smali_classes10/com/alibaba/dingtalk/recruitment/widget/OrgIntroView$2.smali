.class final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Lgve$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(F)V
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
    .line 208
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;->a(I)V

    .line 214
    :cond_0
    return-void
.end method
