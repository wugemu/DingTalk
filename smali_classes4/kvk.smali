.class public final Lkvk;
.super Lktx;


# static fields
.field public static final a:Lkvk;


# instance fields
.field b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkvk;

    invoke-direct {v0}, Lkvk;-><init>()V

    sput-object v0, Lkvk;->a:Lkvk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lktx;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lkvk;->b:[B

    return-void
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x5

    iget-object v1, p0, Lkvk;->b:[B

    invoke-virtual {p1, v0, v1}, Lkvq;->a(I[B)V

    return-void
.end method
