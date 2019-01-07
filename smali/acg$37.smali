.class final Lacg$37;
.super Lgqq;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->c(Landroid/content/Context;Lcma;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2975
    iput-object p1, p0, Lacg$37;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$37;->b:Lcma;

    iput-object p3, p0, Lacg$37;->c:Ljava/lang/String;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2978
    iget-object v0, p0, Lacg$37;->a:Landroid/content/Context;

    iget-object v1, p0, Lacg$37;->b:Lcma;

    iget-object v2, p0, Lacg$37;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lacg;->b(Landroid/content/Context;Lcma;Ljava/lang/String;)V

    .line 2979
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2975
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lacg$37;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2983
    const-string/jumbo v0, "tryLogin, ticketLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    iget-object v0, p0, Lacg$37;->b:Lcma;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lacg$37;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    :cond_0
    return-void
.end method
