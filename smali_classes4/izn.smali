.class public final Lizn;
.super Ljava/lang/Object;
.source "ServiceKeyUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "/r/"

    sput-object v0, Lizn;->a:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "/"

    sput-object v0, Lizn;->b:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "."

    sput-object v0, Lizn;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "simpleClassName"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 83
    :cond_0
    const/4 p0, 0x0

    .line 89
    .end local p0    # "simpleClassName":Ljava/lang/String;
    .local v0, "idx":I
    :cond_1
    :goto_0
    return-object p0

    .line 85
    .end local v0    # "idx":I
    .restart local p0    # "simpleClassName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "Service"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 86
    .restart local v0    # "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
