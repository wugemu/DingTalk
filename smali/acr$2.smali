.class final Lacr$2;
.super Lgqq;
.source "MultiMailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lacr;


# direct methods
.method constructor <init>(Lacr;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1290
    iput-object p1, p0, Lacr$2;->c:Lacr;

    iput-object p2, p0, Lacr$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lacr$2;->b:Lcma;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 1293
    iget-object v0, p0, Lacr$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lacg;->a(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lacr$2;->c:Lacr;

    invoke-static {v0}, Lacr;->e(Lacr;)V

    .line 1295
    iget-object v0, p0, Lacr$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lacr$2;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1298
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1290
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lacr$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1302
    const-string/jumbo v0, "tryResetDingtalkMail, ticketLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lacr$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lacr$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_0
    return-void
.end method
