.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->clearTempToken()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v1, "login_temp_token_cancel"

    invoke-static {v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->finish()V

    .line 144
    return-void
.end method
