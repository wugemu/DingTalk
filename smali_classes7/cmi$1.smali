.class final Lcmi$1;
.super Ljava/lang/Object;
.source "RequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmi;->handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/idl/service/ResultError;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcmi;


# direct methods
.method constructor <init>(Lcmi;Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcmi;

    .prologue
    .line 21
    .local p0, "this":Lcmi$1;, "Lcmi$1;"
    iput-object p1, p0, Lcmi$1;->c:Lcmi;

    iput-object p2, p0, Lcmi$1;->a:Lcom/laiwang/idl/service/ResultError;

    iput-object p3, p0, Lcmi$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    .local p0, "this":Lcmi$1;, "Lcmi$1;"
    iget-object v0, p0, Lcmi$1;->c:Lcmi;

    iget-object v1, p0, Lcmi$1;->a:Lcom/laiwang/idl/service/ResultError;

    iget-object v2, p0, Lcmi$1;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcmi;->caughtImpl(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
