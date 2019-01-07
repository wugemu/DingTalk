.class final Lcom/alibaba/android/user/login/SignUpActivity$5;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

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
    .line 261
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v1}, Lfxf;->b(Landroid/content/Context;)Lfxf$a;

    move-result-object v0

    .line 263
    .local v0, "localCountryMobile":Lfxf$a;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/SignUpActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity$5$1;-><init>(Lcom/alibaba/android/user/login/SignUpActivity$5;Lfxf$a;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method
