.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

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
    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    sget v1, Lbtp$g;->dt_lv_live_reconnection:I

    sget v2, Lbtp$b;->taolive_live_over_color:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;IIZ)V

    goto :goto_0
.end method
