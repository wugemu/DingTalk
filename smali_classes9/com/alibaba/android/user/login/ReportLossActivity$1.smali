.class final Lcom/alibaba/android/user/login/ReportLossActivity$1;
.super Ljava/lang/Object;
.source "ReportLossActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$1;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$1;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;)V

    .line 107
    const-string/jumbo v0, "login_reportlost_password_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 108
    return-void
.end method
