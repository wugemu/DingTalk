.class final Lcqt$2;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 145
    iput-object p1, p0, Lcqt$2;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 148
    iget-object v0, p0, Lcqt$2;->a:Lcqt;

    .line 1039
    iget-object v0, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f()V

    .line 149
    iget-object v0, p0, Lcqt$2;->a:Lcqt;

    .line 2039
    iget v0, v0, Lcqt;->a:I

    .line 149
    if-ne v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lcqt$2;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_emotion_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcqt$2;->a:Lcqt;

    .line 3263
    iget v1, v0, Lcqt;->a:I

    if-eq v1, v2, :cond_1

    .line 3264
    iput v2, v0, Lcqt;->a:I

    .line 3265
    iget-object v1, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d()V

    .line 3266
    iget-object v1, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h()V

    .line 3267
    iget-object v1, v0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 3268
    iget-object v1, v0, Lcqt;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3269
    iget-object v0, v0, Lcqt;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcqt$2;->a:Lcqt;

    .line 4039
    iget-object v0, v0, Lcqt;->b:Landroid/content/Context;

    .line 154
    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
