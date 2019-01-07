.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
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
        "Lbeo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    check-cast p1, Lbeo;

    .line 1141
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1142
    if-nez p1, :cond_1

    .line 1143
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[DingSenderCheckInActivity]checkInCodeObject is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    sget v1, Laxp$i;->and_group_qrcode_generate_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .line 2026
    iget-object v3, p1, Lbeo;->a:Ljava/lang/String;

    .line 1147
    invoke-static {v2, v3}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    .line 2042
    iget v3, p1, Lbeo;->b:I

    .line 1148
    if-lez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3042
    iget v0, p1, Lbeo;->b:I

    .line 1149
    if-lez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .line 4042
    iget v1, p1, Lbeo;->b:I

    .line 1150
    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1148
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingSenderCheckInActivity]get qrcode failed: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 163
    return-void
.end method
