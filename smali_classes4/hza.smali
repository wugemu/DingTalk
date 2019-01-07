.class public final Lhza;
.super Ljava/lang/Object;
.source "SmileDetectResult.java"


# instance fields
.field protected a:F

.field protected b:I

.field protected c:[F

.field protected d:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .param p1, "score"    # F
    .param p2, "result"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lhza;->a:F

    .line 25
    iput p2, p0, Lhza;->b:I

    .line 26
    return-void
.end method

.method public constructor <init>(FI[F[I)V
    .locals 1
    .param p1, "score"    # F
    .param p2, "result"    # I
    .param p3, "landmarks"    # [F
    .param p4, "faceRect"    # [I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lhza;->a:F

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lhza;->b:I

    .line 31
    iput-object p3, p0, Lhza;->c:[F

    .line 32
    iput-object p4, p0, Lhza;->d:[I

    .line 33
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lhza;->a:F

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lhza;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lhza;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(0:success other:error)\nscore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhza;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
