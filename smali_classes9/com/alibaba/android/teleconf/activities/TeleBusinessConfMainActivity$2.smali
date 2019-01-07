.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 558
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "meeting_applymore_click "

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 563
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 564
    const-string/jumbo v2, "?showmenu=false&corpid=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "dstParam":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/authupdate"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .end local v0    # "dstParam":Ljava/lang/String;
    .local v1, "toUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    return-void

    .line 566
    .end local v1    # "toUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "?showmenu=false&corpid=%s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "0"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dstParam":Ljava/lang/String;
    goto :goto_0

    .line 570
    .end local v0    # "dstParam":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/service30"

    .restart local v1    # "toUrl":Ljava/lang/String;
    goto :goto_1
.end method
