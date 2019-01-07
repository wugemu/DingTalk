.class public final Lkyg;
.super Lktu;

# interfaces
.implements Lktt;


# instance fields
.field public a:Lkvm;


# direct methods
.method public constructor <init>(Lkvm;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkyg;->a:Lkvm;

    iput-object p1, p0, Lkyg;->a:Lkvm;

    return-void
.end method

.method public constructor <init>(Lkvn;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkyg;->a:Lkvm;

    iput-object p1, p0, Lkyg;->a:Lkvm;

    return-void
.end method

.method public constructor <init>(Lkyi;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkyg;->a:Lkvm;

    invoke-virtual {p1}, Lkyi;->c()Lkvm;

    move-result-object v0

    iput-object v0, p0, Lkyg;->a:Lkvm;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 1

    iget-object v0, p0, Lkyg;->a:Lkvm;

    return-object v0
.end method
