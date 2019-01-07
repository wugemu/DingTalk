.class public final enum Lanet/channel/request/Request$Method;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanet/channel/request/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/request/Request$Method;

.field public static final enum GET:Lanet/channel/request/Request$Method;

.field public static final enum POST:Lanet/channel/request/Request$Method;


# instance fields
.field private httpMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lanet/channel/request/Request$Method;

    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lanet/channel/request/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/request/Request$Method;->GET:Lanet/channel/request/Request$Method;

    .line 26
    new-instance v0, Lanet/channel/request/Request$Method;

    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lanet/channel/request/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/request/Request$Method;->POST:Lanet/channel/request/Request$Method;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lanet/channel/request/Request$Method;

    sget-object v1, Lanet/channel/request/Request$Method;->GET:Lanet/channel/request/Request$Method;

    aput-object v1, v0, v3

    sget-object v1, Lanet/channel/request/Request$Method;->POST:Lanet/channel/request/Request$Method;

    aput-object v1, v0, v4

    sput-object v0, Lanet/channel/request/Request$Method;->$VALUES:[Lanet/channel/request/Request$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lanet/channel/request/Request$Method;->httpMethod:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/request/Request$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lanet/channel/request/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanet/channel/request/Request$Method;

    return-object v0
.end method

.method public static values()[Lanet/channel/request/Request$Method;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lanet/channel/request/Request$Method;->$VALUES:[Lanet/channel/request/Request$Method;

    invoke-virtual {v0}, [Lanet/channel/request/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/request/Request$Method;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lanet/channel/request/Request$Method;->httpMethod:Ljava/lang/String;

    return-object v0
.end method
