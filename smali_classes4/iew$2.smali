.class final Liew$2;
.super Ljava/lang/Object;
.source "RequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liew;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Liew;


# direct methods
.method constructor <init>(Liew;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Liew;

    .prologue
    .line 44
    .local p0, "this":Liew$2;, "Liew$2;"
    iput-object p1, p0, Liew$2;->b:Liew;

    iput-object p2, p0, Liew$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Liew$2;, "Liew$2;"
    iget-object v0, p0, Liew$2;->b:Liew;

    iget-object v1, p0, Liew$2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Liew;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
