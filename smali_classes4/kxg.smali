.class public final Lkxg;
.super Lktu;


# static fields
.field public static final b:Lkxn;

.field public static final c:Lkxn;

.field public static final d:Lkvj;

.field public static final e:Lkvj;


# instance fields
.field public a:Lkxn;

.field private f:Lkxn;

.field private g:Lkvj;

.field private h:Lkvj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkxn;

    sget-object v1, Lkwy;->i:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sput-object v0, Lkxg;->b:Lkxn;

    new-instance v0, Lkxn;

    sget-object v1, Lkxd;->k_:Lkvn;

    sget-object v2, Lkxg;->b:Lkxn;

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sput-object v0, Lkxg;->c:Lkxn;

    new-instance v0, Lkvj;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lkvj;-><init>(I)V

    sput-object v0, Lkxg;->d:Lkvj;

    new-instance v0, Lkvj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkvj;-><init>(I)V

    sput-object v0, Lkxg;->e:Lkvj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    sget-object v0, Lkxg;->b:Lkxn;

    iput-object v0, p0, Lkxg;->a:Lkxn;

    sget-object v0, Lkxg;->c:Lkxn;

    iput-object v0, p0, Lkxg;->f:Lkxn;

    sget-object v0, Lkxg;->d:Lkvj;

    iput-object v0, p0, Lkxg;->g:Lkvj;

    sget-object v0, Lkxg;->e:Lkvj;

    iput-object v0, p0, Lkxg;->h:Lkvj;

    return-void
.end method

.method private constructor <init>(Lkuc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 0
    invoke-direct {p0}, Lktu;-><init>()V

    sget-object v0, Lkxg;->b:Lkxn;

    iput-object v0, p0, Lkxg;->a:Lkxn;

    sget-object v0, Lkxg;->c:Lkxn;

    iput-object v0, p0, Lkxg;->f:Lkxn;

    sget-object v0, Lkxg;->d:Lkvj;

    iput-object v0, p0, Lkxg;->g:Lkvj;

    sget-object v0, Lkxg;->e:Lkvj;

    iput-object v0, p0, Lkxg;->h:Lkvj;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkuh;

    .line 1000
    iget v2, v0, Lkuh;->a:I

    .line 0
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0, v3}, Lkxn;->a(Lkuh;Z)Lkxn;

    move-result-object v0

    iput-object v0, p0, Lkxg;->a:Lkxn;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Lkxn;->a(Lkuh;Z)Lkxn;

    move-result-object v0

    iput-object v0, p0, Lkxg;->f:Lkxn;

    goto :goto_1

    .line 2000
    :pswitch_2
    invoke-virtual {v0}, Lkuh;->e()Lkvm;

    move-result-object v0

    invoke-static {v0}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lkxg;->g:Lkvj;

    goto :goto_1

    .line 3000
    :pswitch_3
    invoke-virtual {v0}, Lkuh;->e()Lkvm;

    move-result-object v0

    invoke-static {v0}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lkxg;->h:Lkvj;

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lkxn;Lkxn;Lkvj;Lkvj;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkxg;->a:Lkxn;

    iput-object p2, p0, Lkxg;->f:Lkxn;

    iput-object p3, p0, Lkxg;->g:Lkvj;

    iput-object p4, p0, Lkxg;->h:Lkvj;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lkxg;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lkxg;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lkxg;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lkuc;

    if-eqz v0, :cond_2

    new-instance v0, Lkxg;

    check-cast p0, Lkuc;

    invoke-direct {v0, p0}, Lkxg;-><init>(Lkuc;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown object in factory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v4, 0x1

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxg;->a:Lkxn;

    sget-object v2, Lkxg;->b:Lkxn;

    invoke-virtual {v1, v2}, Lkxn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lkvy;

    const/4 v2, 0x0

    iget-object v3, p0, Lkxg;->a:Lkxn;

    invoke-direct {v1, v4, v2, v3}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    iget-object v1, p0, Lkxg;->f:Lkxn;

    sget-object v2, Lkxg;->c:Lkxn;

    invoke-virtual {v1, v2}, Lkxn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lkvy;

    iget-object v2, p0, Lkxg;->f:Lkxn;

    invoke-direct {v1, v4, v4, v2}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_1
    iget-object v1, p0, Lkxg;->g:Lkvj;

    sget-object v2, Lkxg;->d:Lkvj;

    invoke-virtual {v1, v2}, Lkvj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lkvy;

    const/4 v2, 0x2

    iget-object v3, p0, Lkxg;->g:Lkvj;

    invoke-direct {v1, v4, v2, v3}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_2
    iget-object v1, p0, Lkxg;->h:Lkvj;

    sget-object v2, Lkxg;->e:Lkvj;

    invoke-virtual {v1, v2}, Lkvj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lkvy;

    const/4 v2, 0x3

    iget-object v3, p0, Lkxg;->h:Lkvj;

    invoke-direct {v1, v4, v2, v3}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_3
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
