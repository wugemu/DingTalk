.class final Leii$8$1;
.super Lcmi;
.source "ConfigEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leii$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leii$8;


# direct methods
.method constructor <init>(Leii$8;)V
    .locals 0
    .param p1, "this$1"    # Leii$8;

    .prologue
    .line 489
    iput-object p1, p0, Leii$8$1;->a:Leii$8;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 498
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "handleOrgValidate"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    .line 1492
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "handleOrgValidate"

    const-string/jumbo v2, "successs"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Leii$8$1;->a:Leii$8;

    iget-object v0, v0, Leii$8;->b:Leii;

    invoke-static {v0}, Leii;->g(Leii;)V

    .line 489
    return-void
.end method
