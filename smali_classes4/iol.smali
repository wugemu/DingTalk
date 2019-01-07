.class public final Liol;
.super Ljava/lang/Object;
.source "H5JsCallData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liol$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Liol$a;)V
    .locals 2
    .param p1, "builder"    # Liol$a;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iget-object v0, p1, Liol$a;->a:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Liol;->a:Ljava/lang/String;

    .line 2041
    iget-wide v0, p1, Liol$a;->b:J

    .line 21
    iput-wide v0, p0, Liol;->b:J

    .line 3041
    iget-object v0, p1, Liol$a;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Liol;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Liol$a;B)V
    .locals 0
    .param p1, "x0"    # Liol$a;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Liol;-><init>(Liol$a;)V

    return-void
.end method
