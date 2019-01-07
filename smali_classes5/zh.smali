.class public final Lzh;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lzh;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lzh;->a:Ljava/lang/Class;

    invoke-static {v1}, Lzi;->a(Ljava/lang/Class;)Lzg;

    move-result-object v0

    .line 29
    .local v0, "encrypt":Lzg;
    invoke-virtual {v0}, Lzg;->a()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v1, Lzh;->a:Ljava/lang/Class;

    invoke-static {v1}, Lzi;->a(Ljava/lang/Class;)Lzg;

    move-result-object v0

    .line 19
    .local v0, "encrypt":Lzg;
    invoke-virtual {v0, p0, p1}, Lzg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lzg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "clazzType":Ljava/lang/Class;, "Ljava/lang/Class<+Lzg;>;"
    sput-object p0, Lzh;->a:Ljava/lang/Class;

    .line 39
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    sget-object v1, Lzh;->a:Ljava/lang/Class;

    invoke-static {v1}, Lzi;->a(Ljava/lang/Class;)Lzg;

    move-result-object v0

    .line 34
    .local v0, "encrypt":Lzg;
    invoke-virtual {v0}, Lzg;->b()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v1, Lzh;->a:Ljava/lang/Class;

    invoke-static {v1}, Lzi;->a(Ljava/lang/Class;)Lzg;

    move-result-object v0

    .line 24
    .local v0, "encrypt":Lzg;
    invoke-virtual {v0, p0, p1}, Lzg;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
