.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1912
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    const-string/jumbo v0, "conf_grant_dialog_show_flag"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1916
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lexi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lexi$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lexi$a;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
