.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 314
    .local v0, "uid":J
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_detail_person_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;J)V

    .line 318
    .end local v0    # "uid":J
    :cond_0
    return-void
.end method
