.class final Lkvf;
.super Ljava/lang/Object;


# static fields
.field static final a:Lkvs;

.field static final b:Lkvu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkvs;

    invoke-direct {v0}, Lkvs;-><init>()V

    sput-object v0, Lkvf;->a:Lkvs;

    new-instance v0, Lkvu;

    invoke-direct {v0}, Lkvu;-><init>()V

    sput-object v0, Lkvf;->b:Lkvu;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lktv;)Lkvs;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lkvb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 0
    if-gtz v0, :cond_0

    sget-object v0, Lkvf;->a:Lkvs;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkvs;

    invoke-direct {v0, p0}, Lkvs;-><init>(Lkvb;)V

    goto :goto_0
.end method

.method static a(Lktv;Z)Lkvu;
    .locals 2

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lkvb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 0
    if-gtz v0, :cond_0

    sget-object v0, Lkvf;->b:Lkvu;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkvu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkvu;-><init>(Lkvb;Z)V

    goto :goto_0
.end method
