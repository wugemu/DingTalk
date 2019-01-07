.class final Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;
.super Ljava/lang/Object;
.source "DingRecentUserActivityV2.java"

# interfaces
.implements Lbau$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;-><init>(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 119
    .line 2135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->finish()V

    .line 141
    return-void
.end method

.method public final a(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 203
    .line 9135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 203
    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->f(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 145
    .line 4135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->b(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 127
    .line 3135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 111
    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "receiverTip"    # Ljava/lang/String;

    .prologue
    .line 177
    .line 7135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 177
    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->d(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "canSelectMySelf"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    .line 5135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 161
    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->c(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    .line 8135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 189
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->e(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    sget v4, Laxp$i;->dt_ding_receiver_menu_add:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    .line 198
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " "

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 197
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    .line 6135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;->d(Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingRecentUserActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
