.class public final Ljms;
.super Ljava/lang/Object;
.source "ARResult.java"


# instance fields
.field public a:[I

.field public b:[I

.field public c:[B

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [I

    iput-object v0, p0, Ljms;->a:[I

    .line 8
    new-array v0, v1, [I

    iput-object v0, p0, Ljms;->b:[I

    .line 10
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Ljms;->c:[B

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljms;->d:Ljava/lang/String;

    return-void
.end method
