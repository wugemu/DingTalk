.class final Lhfp$a;
.super Ljava/lang/Object;
.source "RuntimeCacheDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "domain"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "=? AND "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "bizType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "=? AND "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "corpId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "=?"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhfp$a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
