.class final Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpj;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;Lhpj;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->c:Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->a:Lhpj;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->a:Lhpj;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->a:Lhpj;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;->b:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lhpj;->a(Ljava/io/InputStream;)V

    .line 93
    :cond_0
    return-void
.end method
