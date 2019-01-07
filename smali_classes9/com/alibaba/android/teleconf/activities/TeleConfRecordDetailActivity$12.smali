.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$12;
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
    .line 249
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    .line 253
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_info_mobile_call_menu_list_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 254
    return-void
.end method
