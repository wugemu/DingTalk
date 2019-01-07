.class final Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4$1;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "0571-88157808"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
