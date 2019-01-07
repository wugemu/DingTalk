.class final Lfnm$a;
.super Ljava/lang/Object;
.source "UserProfileDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "uid"

    aput-object v1, v0, v2

    const-string/jumbo v1, " = ? "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnm$a;->a:Ljava/lang/String;

    .line 360
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "REPLACE INTO "

    aput-object v1, v0, v2

    const-string/jumbo v1, "tbuser"

    aput-object v1, v0, v3

    const-string/jumbo v1, " ("

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "modifyTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ") VALUES (?, ?, ?);"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnm$a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
