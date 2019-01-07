.class public final Lnw;
.super Ljava/lang/Object;
.source "TreeParser.java"


# static fields
.field public static a:Lni;


# instance fields
.field protected b:Lnx;

.field protected c:Lnh;

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lni;

    invoke-direct {v0}, Lni;-><init>()V

    sput-object v0, Lnw;->a:Lni;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lnh;

    invoke-direct {v0}, Lnh;-><init>()V

    iput-object v0, p0, Lnw;->c:Lnh;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lnw;->d:I

    .line 47
    new-instance v0, Lnx;

    invoke-direct {v0}, Lnx;-><init>()V

    iput-object v0, p0, Lnw;->b:Lnx;

    .line 48
    return-void
.end method
