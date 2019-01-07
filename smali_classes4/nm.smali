.class public abstract Lnm;
.super Ljava/lang/Object;
.source "FileLineFormatter.java"


# static fields
.field private static a:Lnm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lnl;

    invoke-direct {v0}, Lnl;-><init>()V

    sput-object v0, Lnm;->a:Lnm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lnm;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lnm;->a:Lnm;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;II)Ljava/lang/String;
.end method
