.class public final Lkyk;
.super Lktu;


# instance fields
.field public a:Llax;


# direct methods
.method public constructor <init>(Llau;Lktz;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p2}, Lktz;->f()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Llau;->a([B)Llax;

    move-result-object v0

    iput-object v0, p0, Lkyk;->a:Llax;

    return-void
.end method

.method public constructor <init>(Llax;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkyk;->a:Llax;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lkvo;

    iget-object v1, p0, Lkyk;->a:Llax;

    invoke-virtual {v1}, Llax;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lkvo;-><init>([B)V

    return-object v0
.end method
