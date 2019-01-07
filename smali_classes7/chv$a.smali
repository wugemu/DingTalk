.class public final Lchv$a;
.super Ljava/lang/Object;
.source "CertifyRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lchv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lchv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lchv;-><init>(B)V

    iput-object v0, p0, Lchv$a;->a:Lchv;

    .line 64
    return-void
.end method
