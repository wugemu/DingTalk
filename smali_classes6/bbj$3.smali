.class final Lbbj$3;
.super Ljava/lang/Object;
.source "ApiEventListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbj;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbbj;


# direct methods
.method constructor <init>(Lbbj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbbj;

    .prologue
    .line 71
    .local p0, "this":Lbbj$3;, "Lbbj$3;"
    iput-object p1, p0, Lbbj$3;->c:Lbbj;

    iput-object p2, p0, Lbbj$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbj$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 74
    .local p0, "this":Lbbj$3;, "Lbbj$3;"
    iget-object v0, p0, Lbbj$3;->c:Lbbj;

    invoke-static {v0}, Lbbj;->a(Lbbj;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lbbj$3;->c:Lbbj;

    invoke-static {v0}, Lbbj;->a(Lbbj;)Lcma;

    move-result-object v0

    iget-object v1, p0, Lbbj$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbj$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
