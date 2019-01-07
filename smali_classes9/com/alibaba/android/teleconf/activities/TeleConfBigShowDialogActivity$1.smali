.class final Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;
.super Ljava/lang/Object;
.source "TeleConfBigShowDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->finish()V

    .line 111
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Cancel BigShow"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getStatistic()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "statistic":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "_cancel"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    .end local v0    # "statistic":Ljava/lang/String;
    :cond_0
    return-void
.end method
