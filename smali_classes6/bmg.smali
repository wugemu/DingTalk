.class public final Lbmg;
.super Ljava/lang/Object;
.source "ClientNpcRespWrapper.java"


# instance fields
.field public a:Ljava/lang/reflect/Type;

.field public b:Lbmi;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lbmi;)V
    .locals 0
    .param p1, "respType"    # Ljava/lang/reflect/Type;
    .param p2, "listener"    # Lbmi;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbmg;->a:Ljava/lang/reflect/Type;

    .line 17
    iput-object p2, p0, Lbmg;->b:Lbmi;

    .line 18
    return-void
.end method
