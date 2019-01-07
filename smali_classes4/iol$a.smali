.class public final Liol$a;
.super Ljava/lang/Object;
.source "H5JsCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Liol$a;->a:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Liol$a;->b:J

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Liol$a;->c:Ljava/lang/String;

    return-void
.end method
