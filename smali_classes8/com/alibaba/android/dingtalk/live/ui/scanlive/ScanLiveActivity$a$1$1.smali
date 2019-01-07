.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1$1;
.super Ljava/lang/Object;
.source "ScanLiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->finish()V

    .line 395
    return-void
.end method
