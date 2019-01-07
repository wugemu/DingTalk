.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;
.super Ljava/lang/Object;
.source "ScanLiveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$2;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    sget v1, Lbtp$g;->dt_lv_live_status_living:I

    sget v2, Lbtp$b;->taolive_living_color:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;IIZ)V

    .line 411
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 1073
    iput-boolean v3, v0, Lbtq;->d:Z

    goto :goto_0
.end method
