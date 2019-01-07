.class final Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;
.super Ljava/lang/Object;
.source "DingMeetingMinutesActivity.java"

# interfaces
.implements Lbam$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->dismissLoadingDialog()V

    .line 133
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isRecorder"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->c(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Laya;

    move-result-object v0

    .line 1055
    iput-object p1, v0, Laya;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1056
    invoke-virtual {v0}, Laya;->notifyDataSetChanged()V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    .local p1, "subTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->c(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Laya;

    move-result-object v0

    .line 1047
    iget-object v1, v0, Laya;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1048
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    iget-object v1, v0, Laya;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1051
    :cond_0
    invoke-virtual {v0}, Laya;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->showLoadingDialog()V

    .line 128
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->finish()V

    .line 123
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lbam$a;

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;Lbam$a;)Lbam$a;

    .line 96
    return-void
.end method
