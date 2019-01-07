.class final Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;
.super Ljava/lang/Object;
.source "DingMeetingStatusV2Fragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 366
    check-cast p1, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 1373
    if-eqz p1, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;->nextRemindTime:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;J)V

    .line 1376
    :cond_0
    sget v0, Laxp$i;->and_ding_inform_again_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 366
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string/jumbo v0, "431018"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "431033"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "431036"

    .line 390
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lbkh;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 395
    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingMeetingStatusV2Fragment] remindUnResponseUser failed, errorCode:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", errorMsg:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 382
    return-void
.end method
