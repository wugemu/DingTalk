.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->b(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    return-void
.end method
