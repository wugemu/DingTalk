.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;
.super Lcq;
.source "LiveDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .line 136
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcn;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
    .param p2, "x1"    # Lcn;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcn;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    if-nez p1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 148
    :cond_0
    const-string/jumbo v1, "intent_extra_viewer_stat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    if-nez v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 159
    :cond_3
    const-string/jumbo v1, "intent_extra_viewer_stat"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    move-result-object v1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 174
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    sget v3, Lbtp$g;->dt_live_viewer:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v2

    iget v1, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->allViewCount:I

    .line 179
    .local v1, "count":I
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 182
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 184
    .end local v1    # "count":I
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    sget v3, Lbtp$g;->dt_live_not_viewer:I

    .line 175
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .line 178
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v2

    iget v1, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->unViewAllCount:I

    goto :goto_1
.end method
