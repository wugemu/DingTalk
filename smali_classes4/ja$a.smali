.class final Lja$a;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lja;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lja;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lja;-><init>(B)V

    sput-object v0, Lja$a;->a:Lja;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
