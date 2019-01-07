.class public interface abstract Lkmr;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lkmr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lkmr$1;

    invoke-direct {v0}, Lkmr$1;-><init>()V

    sput-object v0, Lkmr;->a:Lkmr;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
