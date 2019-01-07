.class public final Ljnt;
.super Ljava/lang/Object;
.source "InputStreamProxy.java"


# instance fields
.field a:Llp;

.field b:Ljava/io/BufferedInputStream;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Ljnt;->b:Ljava/io/BufferedInputStream;

    .line 30
    return-void
.end method

.method public constructor <init>(Llp;)V
    .locals 0
    .param p1, "inputStream"    # Llp;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljnt;->a:Llp;

    .line 26
    return-void
.end method
