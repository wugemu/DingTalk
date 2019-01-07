.class public final Lffv;
.super Ljava/lang/Object;
.source "ShareDataSource.java"


# static fields
.field private static a:Lflq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lflq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lflq;->a()Lflq;

    move-result-object v0

    sput-object v0, Lffv;->a:Lflq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lffv;->a:Lflq;

    invoke-virtual {v0, p0}, Lflq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 17
    sget-object v0, Lffv;->a:Lflq;

    invoke-virtual {v0, p0, p1}, Lflq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lffv;->a:Lflq;

    invoke-virtual {v0, p0}, Lflq;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
