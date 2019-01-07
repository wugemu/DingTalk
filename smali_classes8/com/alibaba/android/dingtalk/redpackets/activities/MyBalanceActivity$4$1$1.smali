.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;
.super Ljava/lang/Object;
.source "MyBalanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

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
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Z)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 283
    return-void
.end method
