.class final Ljvi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljvg$b;

.field final synthetic b:Ljvg;


# direct methods
.method constructor <init>(Ljvg;Ljvg$b;)V
    .locals 0

    iput-object p1, p0, Ljvi;->b:Ljvg;

    iput-object p2, p0, Ljvi;->a:Ljvg$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljvi;->b:Ljvg;

    iget-object v1, p0, Ljvi;->a:Ljvg$b;

    invoke-virtual {v0, v1}, Ljvg;->a(Ljvg$b;)V

    return-void
.end method
