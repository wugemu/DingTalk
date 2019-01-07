.class public final Lhmu;
.super Ljava/lang/Object;
.source "MiniAppTaskModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lhmu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/app/Activity;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 11
    check-cast p1, Lhmu;

    .line 2057
    iget-wide v0, p0, Lhmu;->e:J

    .line 3057
    iget-wide v2, p1, Lhmu;->e:J

    .line 1074
    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 11
    return v0
.end method
