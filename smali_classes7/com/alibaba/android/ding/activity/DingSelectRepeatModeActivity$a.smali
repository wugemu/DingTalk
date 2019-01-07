.class final Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;
.super Ljava/lang/Object;
.source "DingSelectRepeatModeActivity.java"

# interfaces
.implements Lbba$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3
    .param p1, "timeStamp"    # J
    .param p3, "deadlineDate"    # J

    .prologue
    .line 123
    .line 3118
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 123
    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_repeat_mode_data"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->getSelectedData()Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "intent_key_deadline_date"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V
    .locals 1
    .param p1, "repeatFrequency"    # Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .prologue
    .line 103
    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 103
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setSelectedData(Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "deadline"    # Ljava/lang/String;

    .prologue
    .line 139
    .line 4118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 139
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .line 2118
    .local p1, "dingRepeatFrequencyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setDataList(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 149
    .line 5118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 149
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
