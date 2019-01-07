.class public final Lkur;
.super Lkvu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkvu;-><init>()V

    return-void
.end method

.method constructor <init>(Lkvb;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkvu;-><init>(Lkvb;Z)V

    return-void
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    instance-of v0, p1, Lkub;

    if-nez v0, :cond_0

    instance-of v0, p1, Lkuo;

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lkvq;->write(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lkvq;->write(I)V

    invoke-virtual {p0}, Lkur;->e()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkvq;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lkvq;->write(I)V

    invoke-virtual {p1, v2}, Lkvq;->write(I)V

    :goto_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lkvu;->a(Lkvq;)V

    goto :goto_1
.end method
