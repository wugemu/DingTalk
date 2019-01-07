.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;
.super Ljava/lang/Object;
.source "ScanLiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 309
    if-nez p2, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;I)I

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->h(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->i(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;I)I

    goto :goto_1
.end method
