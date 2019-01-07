.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;
.super Ljava/lang/Object;
.source "FestivalRedPacketSendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(IDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;DD)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->d:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->b:D

    iput-wide p5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->dismiss()V

    .line 318
    return-void
.end method
