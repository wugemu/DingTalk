.class final Lkom$d$2;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkom$d;->a(ZLkos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkom$d;


# direct methods
.method varargs constructor <init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lkom$d;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 720
    iput-object p1, p0, Lkom$d$2;->a:Lkom$d;

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
    .line 722
    iget-object v0, p0, Lkom$d$2;->a:Lkom$d;

    iget-object v0, v0, Lkom$d;->c:Lkom;

    iget-object v0, v0, Lkom;->b:Lkom$b;

    iget-object v1, p0, Lkom$d$2;->a:Lkom$d;

    iget-object v1, v1, Lkom$d;->c:Lkom;

    invoke-virtual {v0, v1}, Lkom$b;->a(Lkom;)V

    .line 723
    return-void
.end method
