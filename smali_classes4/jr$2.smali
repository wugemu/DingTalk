.class final Ljr$2;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljr;->a(Lanet/channel/request/Request;Lie;)Lji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lie;

.field final synthetic c:Ljr;


# direct methods
.method constructor <init>(Ljr;Lanet/channel/request/Request;Lie;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Ljr$2;->c:Ljr;

    iput-object p2, p0, Ljr$2;->a:Lanet/channel/request/Request;

    iput-object p3, p0, Ljr$2;->b:Lie;

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
    .line 125
    iget-object v0, p0, Ljr$2;->a:Lanet/channel/request/Request;

    new-instance v1, Ljr$2$1;

    invoke-direct {v1, p0}, Ljr$2$1;-><init>(Ljr$2;)V

    .line 1051
    invoke-static {v0, v1}, Ljq;->a(Lanet/channel/request/Request;Lie;)Ljq$a;

    .line 145
    return-void
.end method
