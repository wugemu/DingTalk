.class final Lclm$1$1$1$1$1;
.super Ljava/lang/Object;
.source "NetInspect.java"

# interfaces
.implements Lcll$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclm$1$1$1$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclm$1$1$1$1;


# direct methods
.method constructor <init>(Lclm$1$1$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lclm$1$1$1$1;

    .prologue
    .line 174
    iput-object p1, p0, Lclm$1$1$1$1$1;->a:Lclm$1$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcll$b;)V
    .locals 2
    .param p1, "lwsDetectInfo"    # Lcll$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lclm$1$1$1$1$1;->a:Lclm$1$1$1$1;

    iget-object v0, v0, Lclm$1$1$1$1;->a:Lclm$1$1$1;

    iget-object v0, v0, Lclm$1$1$1;->a:Lclm$1$1;

    iget-object v0, v0, Lclm$1$1;->a:Lclm$1;

    iget-object v0, v0, Lclm$1;->a:Lclm$b;

    iput-object p1, v0, Lclm$b;->m:Lcll$b;

    .line 178
    iget-object v0, p0, Lclm$1$1$1$1$1;->a:Lclm$1$1$1$1;

    iget-object v0, v0, Lclm$1$1$1$1;->a:Lclm$1$1$1;

    iget-object v0, v0, Lclm$1$1$1;->a:Lclm$1$1;

    iget-object v0, v0, Lclm$1$1;->a:Lclm$1;

    iget-object v0, v0, Lclm$1;->c:Lclm$a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lclm$1$1$1$1$1;->a:Lclm$1$1$1$1;

    iget-object v0, v0, Lclm$1$1$1$1;->a:Lclm$1$1$1;

    iget-object v0, v0, Lclm$1$1$1;->a:Lclm$1$1;

    iget-object v0, v0, Lclm$1$1;->a:Lclm$1;

    iget-object v0, v0, Lclm$1;->c:Lclm$a;

    iget-object v1, p0, Lclm$1$1$1$1$1;->a:Lclm$1$1$1$1;

    iget-object v1, v1, Lclm$1$1$1$1;->a:Lclm$1$1$1;

    iget-object v1, v1, Lclm$1$1$1;->a:Lclm$1$1;

    iget-object v1, v1, Lclm$1$1;->a:Lclm$1;

    iget-object v1, v1, Lclm$1;->a:Lclm$b;

    invoke-interface {v0, v1}, Lclm$a;->callback(Lclm$b;)V

    .line 181
    :cond_0
    return-void
.end method
