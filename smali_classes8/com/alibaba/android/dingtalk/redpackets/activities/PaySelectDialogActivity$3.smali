.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;
.super Ljava/lang/Object;
.source "PaySelectDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->setResult(I)V

    .line 82
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    const-string/jumbo v2, "select balance "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->finish()V

    .line 85
    return-void
.end method
