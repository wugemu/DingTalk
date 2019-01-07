.class final Lfrn$a;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field final synthetic d:Lfrn;


# direct methods
.method private constructor <init>(Lfrn;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lfrn$a;->d:Lfrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfrn;B)V
    .locals 0
    .param p1, "x0"    # Lfrn;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lfrn$a;-><init>(Lfrn;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Lfrn$a;->d:Lfrn;

    .line 1054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 403
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfrn$a;->d:Lfrn;

    .line 2054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 403
    invoke-interface {v0}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lfrn$a;->d:Lfrn;

    .line 3054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 407
    iget-object v1, p0, Lfrn$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lfrn$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lfrn$a;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_0
.end method
