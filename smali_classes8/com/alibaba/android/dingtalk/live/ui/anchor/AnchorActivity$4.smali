.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;->a:Z

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
    .line 922
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;->a:Z

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->finish()V

    goto :goto_0
.end method
