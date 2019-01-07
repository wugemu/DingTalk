.class final Lcom/alibaba/android/search/widget/SearchFeedbackView$1;
.super Ljava/lang/Object;
.source "SearchFeedbackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/SearchFeedbackView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/search/widget/SearchFeedbackView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/SearchFeedbackView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/SearchFeedbackView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->b:Lcom/alibaba/android/search/widget/SearchFeedbackView;

    iput-object p2, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "search_result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 78
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/32 v4, 0x39dfa

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v1, v2, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->b:Lcom/alibaba/android/search/widget/SearchFeedbackView;

    invoke-static {v1, p1}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a(Lcom/alibaba/android/search/widget/SearchFeedbackView;Landroid/view/View;)V

    .line 84
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;->a:Landroid/content/Context;

    const-string/jumbo v3, "https://h5.dingtalk.com/en/40plan/h5-feedback/index.html#/"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
