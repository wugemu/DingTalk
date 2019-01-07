.class final Lkom$d$3;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkos;

.field final synthetic c:Lkom$d;


# direct methods
.method varargs constructor <init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;Lkos;)V
    .locals 0
    .param p1, "this$1"    # Lkom$d;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 737
    iput-object p1, p0, Lkom$d$3;->c:Lkom$d;

    iput-object p4, p0, Lkom$d$3;->a:Lkos;

    invoke-direct {p0, p2, p3}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 740
    :try_start_0
    iget-object v0, p0, Lkom$d$3;->c:Lkom$d;

    iget-object v0, v0, Lkom$d;->c:Lkom;

    iget-object v0, v0, Lkom;->p:Lkop;

    iget-object v1, p0, Lkom$d$3;->a:Lkos;

    invoke-virtual {v0, v1}, Lkop;->a(Lkos;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    iget-object v0, p0, Lkom$d$3;->c:Lkom$d;

    iget-object v0, v0, Lkom$d;->c:Lkom;

    invoke-static {v0}, Lkom;->a(Lkom;)V

    goto :goto_0
.end method
