.class final Lacg$35;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Labx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2846
    iput-object p1, p0, Lacg$35;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$35;->b:Lcma;

    iput-object p3, p0, Lacg$35;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2846
    check-cast p1, Labx;

    .line 3849
    if-nez p1, :cond_0

    .line 3851
    const-string/jumbo v0, "checkLoginForMultiMails"

    const-string/jumbo v1, "onDataReceived: loginModel == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    iget-object v0, p0, Lacg$35;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$35;->b:Lcma;

    invoke-static {v0, v1}, Lacg;->d(Landroid/content/Context;Lcma;)V

    .line 3853
    :goto_0
    return-void

    .line 3856
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lacr;->a(Labx;)V

    .line 3857
    iget-object v0, p0, Lacg$35;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$35;->b:Lcma;

    iget-object v2, p0, Lacg$35;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Lcma;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2866
    const-string/jumbo v0, "checkLoginForMultiMails, getDingTalkMailLoginMode"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    iget-object v0, p0, Lacg$35;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$35;->b:Lcma;

    invoke-static {v0, v1}, Lacg;->d(Landroid/content/Context;Lcma;)V

    .line 2868
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2862
    return-void
.end method
