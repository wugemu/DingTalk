.class public final Ljkp$a;
.super Ljava/lang/Object;
.source "VideoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:J

.field final synthetic c:Ljkp;


# direct methods
.method public constructor <init>(Ljkp;II)V
    .locals 2
    .param p1, "this$0"    # Ljkp;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 18
    iput-object p1, p0, Ljkp$a;->c:Ljkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljkp$a;->a:[B

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljkp$a;->b:J

    .line 21
    return-void
.end method
