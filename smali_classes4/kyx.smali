.class public final Lkyx;
.super Ljava/lang/Object;

# interfaces
.implements Llat;


# instance fields
.field public a:Llau;

.field b:[B

.field public c:Llax;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Llau;Llax;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyx;->a:Llau;

    iput-object p2, p0, Lkyx;->c:Llax;

    iput-object p3, p0, Lkyx;->d:Ljava/math/BigInteger;

    sget-object v0, Lkyx;->g:Ljava/math/BigInteger;

    iput-object v0, p0, Lkyx;->e:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lkyx;->b:[B

    return-void
.end method
