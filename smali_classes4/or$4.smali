.class final Lor$4;
.super Ljava/lang/Object;
.source "RPCRequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lor;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lor;


# direct methods
.method constructor <init>(Lor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lor;

    .prologue
    .line 140
    .local p0, "this":Lor$4;, "Lor$4;"
    iput-object p1, p0, Lor$4;->d:Lor;

    iput-object p2, p0, Lor$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lor$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lor$4;->c:Ljava/lang/Throwable;

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
    .line 143
    .local p0, "this":Lor$4;, "Lor$4;"
    iget-object v0, p0, Lor$4;->d:Lor;

    iget-object v1, p0, Lor$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lor$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
