.class final Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;
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
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;

    move-result-object v0

    invoke-interface {v0}, Lbbc$a;->e()V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;

    move-result-object v0

    invoke-interface {v0}, Lbbc$a;->f()V

    goto :goto_0
.end method
