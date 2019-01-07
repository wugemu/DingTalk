.class final Lhpk$1;
.super Ljava/lang/Object;
.source "PersistResourceLoader.java"

# interfaces
.implements Lhpb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpk;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

.field final synthetic c:Lhpk;


# direct methods
.method constructor <init>(Lhpk;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
    .locals 0
    .param p1, "this$0"    # Lhpk;

    .prologue
    .line 61
    iput-object p1, p0, Lhpk$1;->c:Lhpk;

    iput-object p2, p0, Lhpk$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iput-object p3, p0, Lhpk$1;->b:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lhpk$1;->c:Lhpk;

    iget-object v1, p0, Lhpk$1;->c:Lhpk;

    .line 2059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 82
    const-string/jumbo v2, "net"

    invoke-static {v0, v1, v2, p1}, Lhpk;->a(Lhpk;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lhpk$1;->b:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public final a(Lhpg;)V
    .locals 4
    .param p1, "res"    # Lhpg;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    const/16 v0, 0x130

    iget v1, p1, Lhpg;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhpk$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpk$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpk$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v0, v0, Lhpl;->a:[B

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lhpk$1;->b:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lhpk$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v2, v2, Lhpl;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;->a(Ljava/io/InputStream;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lhpk$1;->c:Lhpk;

    iget-object v1, p0, Lhpk$1;->c:Lhpk;

    .line 1059
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 77
    const-string/jumbo v2, "net"

    iget v3, p1, Lhpg;->b:I

    invoke-static {v0, v1, v2, v3}, Lhpk;->a(Lhpk;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lhpk$1;->c:Lhpk;

    iget-object v1, p0, Lhpk$1;->b:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;

    invoke-static {v0, p1, v1}, Lhpk;->a(Lhpk;Lhpg;Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    goto :goto_0
.end method
