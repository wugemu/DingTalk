.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$7$1;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfws;

.field final synthetic b:Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;Lfws;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$7$1;->b:Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$7$1;->a:Lfws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$7$1;->a:Lfws;

    invoke-virtual {v0, v1}, Lfwr;->a(Lfws;)V

    .line 339
    return-void
.end method
