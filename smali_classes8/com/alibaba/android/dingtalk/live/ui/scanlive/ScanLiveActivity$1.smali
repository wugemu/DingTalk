.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;
.super Lbyi$a;
.source "ScanLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a()V
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
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 113
    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    new-instance v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;-><init>()V

    .line 1120
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 1121
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    .line 1122
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    .line 1123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 1124
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v0}, Lbtq;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lbtq;->a(ZZ)Ljjx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;Ljjx;)Ljjx;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljjx;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    sget v2, Lbtp$e;->live_container:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1213
    iput-object v0, v1, Ljjx;->b:Landroid/widget/RelativeLayout;

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;B)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljjx;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljjx;->a(Ljjx$b;)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0}, Ljjx;->b()V

    .line 113
    :cond_1
    return-void
.end method
