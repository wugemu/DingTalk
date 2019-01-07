.class public final Lkmh$a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput v0, p0, Lkmh$a;->b:I

    .line 282
    iput v0, p0, Lkmh$a;->c:I

    .line 283
    iput v0, p0, Lkmh$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lkmh;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lkmh;

    invoke-direct {v0, p0}, Lkmh;-><init>(Lkmh$a;)V

    return-object v0
.end method
