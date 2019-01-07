.class final Llab;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lkvn;)Z
    .locals 1

    sget-object v0, Lkxd;->f_:Lkvn;

    invoke-virtual {p0, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkye;->l:Lkvn;

    invoke-virtual {p0, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkxd;->j:Lkvn;

    invoke-virtual {p0, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkxd;->g:Lkvn;

    invoke-virtual {p0, v0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
