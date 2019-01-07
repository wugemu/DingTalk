.class final Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;
.super Ljava/lang/Object;
.source "DingSelectUserActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;

    move-result-object v0

    invoke-interface {v0}, Lbbc$a;->e()V

    .line 172
    :goto_1
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;

    move-result-object v0

    invoke-interface {v0}, Lbbc$a;->f()V

    goto :goto_1
.end method
