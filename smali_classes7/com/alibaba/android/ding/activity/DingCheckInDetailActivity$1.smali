.class final Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$1;
.super Ljava/lang/Object;
.source "DingCheckInDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .line 1154
    if-eqz v0, :cond_0

    .line 1157
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_ding&questionId=201602127502"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method
