.class final Lbhs$2;
.super Ljava/lang/Object;
.source "RequestMoreEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhs;->a(Lbhs$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhs$a;

.field final synthetic b:Lbhs;


# direct methods
.method constructor <init>(Lbhs;Lbhs$a;)V
    .locals 0
    .param p1, "this$0"    # Lbhs;

    .prologue
    .line 78
    iput-object p1, p0, Lbhs$2;->b:Lbhs;

    iput-object p2, p0, Lbhs$2;->a:Lbhs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lbhs$2;->b:Lbhs;

    iget-object v1, p0, Lbhs$2;->a:Lbhs$a;

    invoke-static {v0, v1}, Lbhs;->a(Lbhs;Lbhs$a;)Lbhs$a;

    .line 82
    iget-object v0, p0, Lbhs$2;->b:Lbhs;

    invoke-static {v0}, Lbhs;->a(Lbhs;)V

    .line 83
    return-void
.end method
