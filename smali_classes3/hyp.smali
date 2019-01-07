.class public abstract Lhyp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/AuthContext$b;


# instance fields
.field public w:I

.field public x:Lcom/alibaba/security/biometrics/face/FaceDetectResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lhyp;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lhyp;->x:Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/security/biometrics/AuthContext;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lhyp;->w:I

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/AuthContext;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lhyp;->w:I

    return-void
.end method

.method public abstract a(Lcom/alibaba/security/biometrics/face/FaceDetectResult;Lhzi;)V
.end method
