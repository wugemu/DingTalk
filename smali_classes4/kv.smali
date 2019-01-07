.class public final Lkv;
.super Ljava/lang/Object;
.source "HttpSslUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkv$b;,
        Lkv$a;
    }
.end annotation


# static fields
.field static a:Ljavax/net/ssl/SSLSocketFactory;

.field static b:Ljavax/net/ssl/HostnameVerifier;

.field public static final c:Ljavax/net/ssl/HostnameVerifier;

.field public static final d:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lkv$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkv$a;-><init>(B)V

    sput-object v0, Lkv;->c:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    invoke-static {}, Lkv$b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lkv;->d:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lkv;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p0, "verifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 31
    sput-object p0, Lkv;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 32
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 23
    sput-object p0, Lkv;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 24
    return-void
.end method

.method public static b()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lkv;->b:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
