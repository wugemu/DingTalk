.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;
.super Lcq;
.source "MyBalanceActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .line 340
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 341
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 365
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method
