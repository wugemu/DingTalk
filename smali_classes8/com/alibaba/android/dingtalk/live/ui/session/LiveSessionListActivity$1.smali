.class final Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;
.super Ljava/lang/Object;
.source "LiveSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lbyb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Lbya;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbya;->b(Ljava/util/List;)V

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/session/LiveSessionListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method
