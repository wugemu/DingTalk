.class public final Lkwu;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Hashtable;

.field static final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkwu;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkwu;->b:Ljava/util/Hashtable;

    const-string/jumbo v0, "B-571"

    sget-object v1, Lkxk;->F:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "B-409"

    sget-object v1, Lkxk;->D:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "B-283"

    sget-object v1, Lkxk;->n:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "B-233"

    sget-object v1, Lkxk;->t:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "B-163"

    sget-object v1, Lkxk;->l:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "P-521"

    sget-object v1, Lkxk;->B:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "P-384"

    sget-object v1, Lkxk;->A:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "P-256"

    sget-object v1, Lkxk;->H:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "P-224"

    sget-object v1, Lkxk;->z:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "P-192"

    sget-object v1, Lkxk;->G:Lkvn;

    invoke-static {v0, v1}, Lkwu;->a(Ljava/lang/String;Lkvn;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkvn;
    .locals 2

    sget-object v0, Lkwu;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Llbd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvn;

    return-object v0
.end method

.method public static a(Lkvn;)Lkyi;
    .locals 1

    invoke-static {p0}, Lkxj;->a(Lkvn;)Lkyi;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lkvn;)V
    .locals 1

    sget-object v0, Lkwu;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwu;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lkvn;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lkwu;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
