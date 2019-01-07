.class final Lcam$2;
.super Ljava/lang/Object;
.source "RedPacketsReceiverListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

.field final synthetic c:Lcam;


# direct methods
.method constructor <init>(Lcam;Landroid/widget/EditText;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;)V
    .locals 0
    .param p1, "this$0"    # Lcam;

    .prologue
    .line 288
    iput-object p1, p0, Lcam$2;->c:Lcam;

    iput-object p2, p0, Lcam$2;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcam$2;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lcam$2;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "cong":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcam$2;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->leaveMessage:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcam$2;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcam$2;->c:Lcam;

    iget-object v0, v0, Lcam;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcam$2;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcam$2;->c:Lcam;

    invoke-virtual {v0}, Lcam;->notifyDataSetChanged()V

    .line 298
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    iget-object v1, p0, Lcam$2;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->sender:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcam$2;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    iget-object v3, p0, Lcam$2;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->flowId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1334
    new-instance v5, Lcbs$3;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7}, Lcbs$3;-><init>(Lcbs;Lcma;)V

    .line 1341
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    .line 1342
    if-eqz v0, :cond_1

    .line 1343
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;->leaveMessageToRedEnvelopFlow(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V

    .line 302
    :cond_1
    return-void
.end method
