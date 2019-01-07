.class public final Lorg/bouncycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;
    }
.end annotation


# instance fields
.field private a:Lkxv;

.field private b:Lkya;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkxv;

    invoke-direct {v0}, Lkxv;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->a:Lkxv;

    new-instance v0, Lkya;

    invoke-direct {v0}, Lkya;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lkya;

    return-void
.end method
