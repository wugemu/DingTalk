.class public final Lamr$a;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[B

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lamr$a;->a:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lamr$a;->b:[B

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lamr$a;->c:J

    return-void
.end method
