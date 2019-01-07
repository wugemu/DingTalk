.class final Lhfg$a;
.super Ljava/lang/Object;
.source "AppInfoSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "app_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, " = ? "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhfg$a;->a:Ljava/lang/String;

    .line 170
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "version"

    aput-object v1, v0, v2

    const-string/jumbo v1, " = ? "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhfg$a;->b:Ljava/lang/String;

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "app_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, " = ?"

    aput-object v1, v0, v3

    const-string/jumbo v1, " AND "

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " = ?"

    aput-object v2, v0, v1

    .line 172
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhfg$a;->c:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
