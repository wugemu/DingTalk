.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lbxn$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->q(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lbxn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$14;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->v(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbxn$a;->a(Ljava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method
