.class public Lcom/alibaba/security/biometrics/build/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:J

.field protected b:[F

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[FII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/build/ax;->a:J

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ax;->b:[F

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ax;->b:[F

    aget v2, p3, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/alibaba/security/biometrics/build/ax;->c:I

    iput p5, p0, Lcom/alibaba/security/biometrics/build/ax;->d:I

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ax;->b:[F

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/build/ax;->d:I

    return v0
.end method
