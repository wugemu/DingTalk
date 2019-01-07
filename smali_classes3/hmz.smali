.class public abstract Lhmz;
.super Lhna;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhmz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhna",
        "<",
        "Lhmz;",
        "Lhmz$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lhna;-><init>()V

    .line 22
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lhmz;->a:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhmz;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lhmz;->a:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public final a([B)Lhmz;
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 32
    iput-object p1, p0, Lhmz;->b:[B

    .line 33
    return-object p0
.end method
