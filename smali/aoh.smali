.class final Laoh;
.super Ljava/lang/Object;
.source "Euler.java"


# instance fields
.field a:Ljava/lang/String;

.field b:D

.field c:D

.field d:D

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoh;->e:Z

    .line 40
    iput-wide v2, p0, Laoh;->b:D

    .line 41
    iput-wide v2, p0, Laoh;->c:D

    .line 42
    iput-wide v2, p0, Laoh;->d:D

    .line 43
    return-void
.end method
