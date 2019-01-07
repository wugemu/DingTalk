.class final Lkqq$1;
.super Ljava/lang/Object;
.source "AddressListFieldImpl.java"

# interfaces
.implements Lkqx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkqx",
        "<",
        "Lkqq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)Lkqn;
    .locals 1

    .prologue
    .line 75
    .line 1078
    new-instance v0, Lkqq;

    invoke-direct {v0, p1, p2, p3, p4}, Lkqq;-><init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V

    .line 75
    return-object v0
.end method
