.class final Lor$3;
.super Ljava/lang/Object;
.source "RPCRequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lor;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lor;


# direct methods
.method constructor <init>(Lor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lor;

    .prologue
    .line 119
    .local p0, "this":Lor$3;, "Lor$3;"
    iput-object p1, p0, Lor$3;->b:Lor;

    iput-object p2, p0, Lor$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    .local p0, "this":Lor$3;, "Lor$3;"
    iget-object v1, p0, Lor$3;->b:Lor;

    iget-object v2, p0, Lor$3;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lor;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "data":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lor$3;->b:Lor;

    invoke-virtual {v1, v0}, Lor;->a(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
