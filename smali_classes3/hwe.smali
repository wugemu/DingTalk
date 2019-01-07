.class public final Lhwe;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# instance fields
.field protected g:I

.field protected h:Z

.field protected i:J

.field protected j:Z

.field protected k:Z

.field protected l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lhwe;->a:I

    const/4 v0, 0x1

    sput v0, Lhwe;->b:I

    const/4 v0, 0x2

    sput v0, Lhwe;->c:I

    const/4 v0, 0x3

    sput v0, Lhwe;->d:I

    const/4 v0, 0x4

    sput v0, Lhwe;->e:I

    const/4 v0, 0x5

    sput v0, Lhwe;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lhwe;->g:I

    iput-boolean v0, p0, Lhwe;->h:Z

    iput-boolean v0, p0, Lhwe;->j:Z

    iput-boolean v0, p0, Lhwe;->k:Z

    iput-boolean v0, p0, Lhwe;->l:Z

    iput v0, p0, Lhwe;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lhwe;->g:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lhwe;->g:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lhwe;->i:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwe;->h:Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwe;->j:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lhwe;->h:Z

    return v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-wide v0, p0, Lhwe;->i:J

    return-wide v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwe;->k:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwe;->l:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lhwe;->j:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lhwe;->k:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lhwe;->l:Z

    return v0
.end method
