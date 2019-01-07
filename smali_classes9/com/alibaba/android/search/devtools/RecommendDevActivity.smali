.class public Lcom/alibaba/android/search/devtools/RecommendDevActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "RecommendDevActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 47
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 48
    .local v4, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "\u6700\u8fd1\u5168\u91cf\u66f4\u65b0\uff1a\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 49
    const-string/jumbo v5, "User: "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 50
    const-string/jumbo v5, "intimacy_user_syn_time"

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    .local v2, "lastUserTime":J
    invoke-static {v2, v3}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 52
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 53
    const-string/jumbo v5, "intimacy_group_syn_time"

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    .local v0, "lastGroupTime":J
    const-string/jumbo v5, "Group: "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 55
    invoke-static {v0, v1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 56
    iget-object v5, p0, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/RecommendDevActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendDevActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_dump_rec_user:I

    if-ne v1, v2, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "loadType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_dump_rec_group:I

    if-ne v1, v2, :cond_2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "loadType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_fullsync_rec:I

    if-ne v1, v2, :cond_3

    .line 70
    invoke-static {}, Lesd;->a()Lesd;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lesd;->a(J)V

    .line 71
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/devtools/RecommendDevActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendDevActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "\u66f4\u65b0\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_msg_full_list:I

    if-ne v1, v2, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lemt$f;->activity_recommend_dev:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->setContentView(I)V

    .line 42
    sget v0, Lemt$e;->tv_sync_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a:Landroid/widget/TextView;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a()V

    .line 44
    return-void
.end method
