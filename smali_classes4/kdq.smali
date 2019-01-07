.class final Lkdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lkdn;


# direct methods
.method constructor <init>(Lkdn;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkdq;->b:Lkdn;

    iput-object p2, p0, Lkdq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v0

    iget-object v1, p0, Lkdq;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljyw;->a(Ljava/lang/String;Z)Ljys;

    return-void
.end method
