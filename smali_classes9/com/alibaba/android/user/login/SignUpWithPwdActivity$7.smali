.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 612
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "phone":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "-"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "fullPhone":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method
