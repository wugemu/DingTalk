.class public final Lhva$a;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lhva$a;->a:[I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lhva$a;-><init>()V

    return-void
.end method
