.class public Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Lexa$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:Lexa$a;

.field private D:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

.field private i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private p:Landroid/widget/TextView;

.field private q:Leuk;

.field private r:Landroid/os/Handler;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 126
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->r:Landroid/os/Handler;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->A:Z

    .line 138
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    .line 142
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->D:Landroid/view/View$OnClickListener;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    .line 7833
    if-lez p2, :cond_1

    .line 7838
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7839
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7840
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7841
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7842
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7843
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7844
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7845
    const-string/jumbo v1, "intent_key_support_fix_line"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7847
    :cond_0
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7853
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 90
    .line 6695
    if-nez p1, :cond_0

    .line 6696
    :goto_0
    return-void

    .line 6699
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 6700
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/schedule_datail.html"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 6701
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    .line 6659
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    if-nez v0, :cond_0

    .line 6660
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    .line 6661
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6663
    :cond_0
    if-eqz p1, :cond_1

    .line 6664
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->a()V

    .line 6669
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a()V

    .line 6670
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Landroid/view/View;)V

    .line 90
    return-void

    .line 6666
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->i:Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfMoreView;->b()V

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 9
    .param p1, "beWarningRemote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 714
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->z:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 715
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->z:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "historyInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 718
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 752
    .end local v0    # "historyInfo":Ljava/lang/String;
    .end local p1    # "beWarningRemote":Z
    :goto_0
    return p1

    .line 721
    .restart local v0    # "historyInfo":Ljava/lang/String;
    .restart local p1    # "beWarningRemote":Z
    :cond_0
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Ljava/lang/String;)V

    .line 722
    .local v1, "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    if-eqz v1, :cond_3

    .line 723
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Quota info: "

    aput-object v7, v6, v3

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-boolean v4, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    if-eqz v4, :cond_2

    .line 725
    iget-boolean v4, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    if-eqz v4, :cond_1

    .line 726
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    :goto_1
    move p1, v2

    .line 730
    goto :goto_0

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    .line 733
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->x:J

    iget-wide v6, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->y:Ljava/lang/String;

    .line 734
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->y:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    .line 735
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 736
    iput-boolean v2, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    .line 737
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->x:J

    iput-wide v4, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    .line 738
    iput-boolean v3, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    .line 739
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->y:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    .line 741
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    move p1, v2

    .line 745
    goto :goto_0

    .end local v0    # "historyInfo":Ljava/lang/String;
    .end local v1    # "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    :cond_3
    move p1, v3

    .line 752
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    .line 5675
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5676
    const-string/jumbo v0, "?corpid=%s&telConfFrom=apmt"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5680
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/telconfcharge"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5682
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 5678
    :cond_0
    const-string/jumbo v0, "?corpid=%s&telConfFrom=apmt"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lexa$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->C:Lexa$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Leuk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q:Leuk;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    .line 7690
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/itest/index.html?lwfrom=user_dingfriend"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->x:J

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->A:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 890
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 891
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 858
    return-object p0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q:Leuk;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q:Leuk;

    invoke-virtual {v0, p1}, Leuk;->b(Ljava/util/List;)V

    .line 866
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 885
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 886
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 900
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 870
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 875
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->ui_common_content_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 211
    sget v0, Leuj$j;->activity_teleconf_business_conference_v3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->setContentView(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1241
    if-eqz v1, :cond_1

    .line 1242
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_0

    .line 1245
    :try_start_0
    const-string/jumbo v3, "corpid"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_1

    .line 1256
    const-string/jumbo v1, "conf_reservation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->u:Ljava/lang/String;

    .line 1257
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1258
    const-string/jumbo v1, "corpid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1261
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1269
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 1270
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/schedule_datail.html"

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    .line 1271
    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->finish()V

    .line 1284
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "_his_quota"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->z:Ljava/lang/String;

    .line 1329
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->A:Z

    .line 1331
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    .line 1333
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1336
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1337
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1338
    if-eqz v0, :cond_3

    .line 1341
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1342
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->w:Ljava/lang/String;

    .line 1348
    :cond_4
    new-instance v0, Lexd;

    invoke-direct {v0, p0}, Lexd;-><init>(Lexa$b;)V

    .line 1352
    sget v0, Leuj$i;->conference_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    .line 1353
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1422
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1451
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->A:Z

    if-nez v0, :cond_6

    .line 1452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_record_ad_header:I

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1453
    if-eqz v3, :cond_5

    .line 1454
    sget v0, Leuj$i;->tv_name:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1455
    sget v1, Leuj$i;->tv_title:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1456
    sget v4, Leuj$l;->dt_conference_conf_ad_title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1457
    sget v0, Leuj$l;->dt_conference_conf_ad_content:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1459
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1473
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1474
    if-nez v0, :cond_6

    .line 1475
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v10, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1479
    :cond_6
    sget v0, Leuj$i;->create_conference:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->c:Landroid/view/View;

    .line 1480
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    sget v0, Leuj$i;->order_conference:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->d:Landroid/view/View;

    .line 1497
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    sget v0, Leuj$i;->conference_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->e:Landroid/view/View;

    .line 1520
    sget v0, Leuj$i;->conference_empty_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->f:Landroid/widget/TextView;

    .line 1521
    sget v0, Leuj$l;->and_conf_main_empty_content_tip:I

    new-array v1, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    sget v0, Leuj$i;->conf_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g:Landroid/view/View;

    .line 1526
    sget v0, Leuj$i;->ll_onebox_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 1527
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setShowOneBox(Z)V

    .line 1528
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    sget v1, Leuj$j;->bizconf_record_top_rights:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setContentResId(I)V

    .line 1529
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    sget v1, Leuj$l;->act_title_conference:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitle(Ljava/lang/String;)V

    .line 1530
    sget v0, Leuj$l;->dt_conference_business_call_subtitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1531
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1532
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->w:Ljava/lang/String;

    .line 1534
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleText(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    sget v1, Leuj$l;->dt_conference_onebox_guide_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setGuideName(Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(I)V

    .line 1537
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(I)V

    .line 1538
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    const/high16 v0, 0x43080000    # 136.0f

    invoke-static {v10, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 2146
    add-int/lit8 v0, v3, 0x0

    add-int/lit8 v0, v0, 0x0

    iget v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    .line 2147
    iput v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    .line 2149
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(I)V

    .line 2150
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(I)V

    .line 2152
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2153
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2154
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2155
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2157
    :cond_8
    iget v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    if-lez v0, :cond_9

    .line 2158
    iget v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(I)Z

    .line 2159
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    .line 1541
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContentListView()Landroid/view/View;

    move-result-object v1

    .line 1542
    if-eqz v1, :cond_a

    .line 1543
    sget v0, Leuj$i;->conf_quota_value:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->j:Landroid/widget/TextView;

    .line 1544
    sget v0, Leuj$i;->conf_quota_recharge:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->k:Landroid/view/View;

    .line 1545
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->k:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1554
    sget v0, Leuj$i;->conf_member_upgrade:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m:Landroid/widget/TextView;

    .line 1555
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_f

    .line 1578
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_videoconference_microapp_getmore_title:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1583
    :goto_1
    sget v0, Leuj$i;->conf_member_number:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l:Landroid/widget/TextView;

    .line 1584
    sget v0, Leuj$l;->conf_txt_conference_members_count:I

    new-array v1, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->B:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1588
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$g;->text_size_17:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1589
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1590
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1594
    :cond_a
    sget v0, Leuj$i;->conf_quota_warning_banner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n:Landroid/view/View;

    .line 1595
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1624
    sget v0, Leuj$i;->warning_banner_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p:Landroid/widget/TextView;

    .line 1625
    sget v0, Leuj$i;->warning_banner_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1626
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2180
    if-nez p0, :cond_10

    move v0, v2

    .line 1645
    :cond_b
    :goto_2
    if-eqz v0, :cond_d

    .line 1646
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_c

    .line 1648
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Z)V

    .line 1651
    :cond_c
    invoke-static {p0}, Leyw;->a(Landroid/app/Activity;)V

    .line 1654
    :cond_d
    new-instance v0, Leuk;

    invoke-direct {v0, p0}, Leuk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q:Leuk;

    .line 1655
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q:Leuk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2288
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s:Landroid/content/BroadcastReceiver;

    .line 2315
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2316
    const-string/jumbo v1, "com.workapp.teleconf.control.reservation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2317
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2318
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2814
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->r:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 2815
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2822
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->C:Lexa$a;

    invoke-interface {v0, v8}, Lexa$a;->a(Z)V

    .line 217
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1580
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_apply_for_more_number:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 2184
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "conf_first_enter_conf_main_record_page"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2185
    invoke-static {p0, v1, v8}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2186
    if-eqz v0, :cond_b

    .line 2187
    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 228
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 4322
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4323
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 4324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s:Landroid/content/BroadcastReceiver;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->C:Lexa$a;

    invoke-interface {v0}, Lexa$a;->i()V

    .line 231
    return-void
.end method

.method protected onStart()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 3756
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v2

    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->t:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3757
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    const-class v4, Leyo$d;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 4081
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 4086
    :cond_0
    :goto_0
    return-void

    .line 4084
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 4085
    if-eqz v1, :cond_0

    .line 4088
    new-instance v4, Leyc$18;

    invoke-direct {v4, v2, v0}, Leyc$18;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->getConfQuotaInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lexa$a;

    .line 4880
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->C:Lexa$a;

    .line 90
    return-void
.end method
