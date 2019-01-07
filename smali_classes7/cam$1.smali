.class final Lcam$1;
.super Ljava/lang/Object;
.source "RedPacketsReceiverListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcam;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

.field final synthetic b:Lcam;


# direct methods
.method constructor <init>(Lcam;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V
    .locals 0
    .param p1, "this$0"    # Lcam;

    .prologue
    .line 259
    iput-object p1, p0, Lcam$1;->b:Lcam;

    iput-object p2, p0, Lcam$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lcam$1;->b:Lcam;

    iget-object v1, p0, Lcam$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-static {v0, v1}, Lcam;->a(Lcam;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V

    .line 263
    return-void
.end method
