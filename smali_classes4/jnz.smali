.class public final Ljnz;
.super Ljava/lang/Object;
.source "UrlMime.java"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, -0x80000000

    iput v0, p0, Ljnz;->a:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Ljnz;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 21
    iput p1, p0, Ljnz;->a:I

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Ljnz;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljnz;->b:Ljava/lang/String;

    return-object v0
.end method
