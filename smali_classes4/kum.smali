.class final Lkum;
.super Ljava/lang/Object;


# static fields
.field static final a:Lkup;

.field static final b:Lkur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkup;

    invoke-direct {v0}, Lkup;-><init>()V

    sput-object v0, Lkum;->a:Lkup;

    new-instance v0, Lkur;

    invoke-direct {v0}, Lkur;-><init>()V

    sput-object v0, Lkum;->b:Lkur;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lktv;)Lkup;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lkvb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 0
    if-gtz v0, :cond_0

    sget-object v0, Lkum;->a:Lkup;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkup;

    invoke-direct {v0, p0}, Lkup;-><init>(Lkvb;)V

    goto :goto_0
.end method
