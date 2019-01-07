.class public final Ljtx$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Ljtx$a;->a:Ljava/lang/String;

    .line 238
    int-to-long v0, p2

    iput-wide v0, p0, Ljtx$a;->b:J

    .line 239
    iget-object v0, p0, Ljtx$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Ljtx$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljtx$a;->c:J

    .line 242
    :cond_0
    return-void
.end method
