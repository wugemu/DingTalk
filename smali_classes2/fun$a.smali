.class public final Lfun$a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lfun$a;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfun$a;->a:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lfun$a;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfun$a;->b:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
