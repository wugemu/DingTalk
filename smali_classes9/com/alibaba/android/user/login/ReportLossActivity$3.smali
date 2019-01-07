.class final Lcom/alibaba/android/user/login/ReportLossActivity$3;
.super Ljava/lang/Object;
.source "ReportLossActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$3;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$3;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ReportLossActivity;->g:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method
