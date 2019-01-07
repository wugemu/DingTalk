.class public final Lhpl;
.super Ljava/lang/Object;
.source "ResourceEntity.java"


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lhpl;->a:[B

    .line 14
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lhpl;->a:[B

    .line 18
    iput-object p2, p0, Lhpl;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lhpl;->c:Ljava/lang/String;

    .line 20
    return-void
.end method
