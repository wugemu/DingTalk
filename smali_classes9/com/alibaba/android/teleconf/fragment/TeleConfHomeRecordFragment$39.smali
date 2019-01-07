.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 596
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_contact_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 598
    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    sget v4, Leuj$l;->dt_conference_start_call_from_contact:I

    .line 599
    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Leuj$l;->choose_limit:I

    const-string/jumbo v5, "CONF_RECORD_ACTIVITY_CREATE_CALL"

    .line 597
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;IILjava/lang/String;ILjava/lang/String;)V

    .line 602
    return-void
.end method
