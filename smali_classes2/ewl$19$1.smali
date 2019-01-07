.class final Lewl$19$1;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewl$19;


# direct methods
.method constructor <init>(Lewl$19;)V
    .locals 0
    .param p1, "this$1"    # Lewl$19;

    .prologue
    .line 1509
    iput-object p1, p0, Lewl$19$1;->a:Lewl$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1509
    check-cast p1, Ljava/lang/String;

    .line 2512
    const/4 v0, 0x0

    .line 2513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2514
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 2515
    invoke-static {p1}, Leyv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 2517
    :cond_0
    iget-object v1, p0, Lewl$19$1;->a:Lewl$19;

    iget-object v1, v1, Lewl$19;->c:Lewl$c;

    if-eqz v1, :cond_1

    .line 2518
    iget-object v1, p0, Lewl$19$1;->a:Lewl$19;

    iget-object v1, v1, Lewl$19;->c:Lewl$c;

    invoke-interface {v1, v0}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1509
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1529
    iget-object v0, p0, Lewl$19$1;->a:Lewl$19;

    iget-object v0, v0, Lewl$19;->c:Lewl$c;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lewl$19$1;->a:Lewl$19;

    iget-object v0, v0, Lewl$19;->c:Lewl$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1532
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1525
    return-void
.end method
