.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4$1;
.super Ljava/lang/Object;
.source "SendNormalRedPacketsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method
