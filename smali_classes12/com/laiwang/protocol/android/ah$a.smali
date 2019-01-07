.class final enum Lcom/laiwang/protocol/android/ah$a;
.super Ljava/lang/Enum;
.source "HelloRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/ah$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum b:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum c:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum d:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum e:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum f:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum g:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum h:Lcom/laiwang/protocol/android/ah$a;

.field public static final enum i:Lcom/laiwang/protocol/android/ah$a;

.field private static final synthetic k:[Lcom/laiwang/protocol/android/ah$a;


# instance fields
.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "REUSE_SID"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->a:Lcom/laiwang/protocol/android/ah$a;

    .line 65
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "CIPHER_SUITE"

    invoke-direct {v0, v1, v5, v5}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->b:Lcom/laiwang/protocol/android/ah$a;

    .line 66
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "SNI"

    invoke-direct {v0, v1, v6, v6}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->c:Lcom/laiwang/protocol/android/ah$a;

    .line 67
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "APP_PUB_KEY"

    invoke-direct {v0, v1, v7, v7}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->d:Lcom/laiwang/protocol/android/ah$a;

    .line 68
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "APP_NONCE"

    invoke-direct {v0, v1, v8, v8}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->e:Lcom/laiwang/protocol/android/ah$a;

    .line 69
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "SERVER_NONCE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->f:Lcom/laiwang/protocol/android/ah$a;

    .line 71
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "VIA"

    const/4 v2, 0x6

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->g:Lcom/laiwang/protocol/android/ah$a;

    .line 72
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "VERSION"

    const/4 v2, 0x7

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->h:Lcom/laiwang/protocol/android/ah$a;

    .line 73
    new-instance v0, Lcom/laiwang/protocol/android/ah$a;

    const-string/jumbo v1, "USER_AGENT"

    const/16 v2, 0x8

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/ah$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->i:Lcom/laiwang/protocol/android/ah$a;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/laiwang/protocol/android/ah$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->a:Lcom/laiwang/protocol/android/ah$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->b:Lcom/laiwang/protocol/android/ah$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->c:Lcom/laiwang/protocol/android/ah$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->d:Lcom/laiwang/protocol/android/ah$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->e:Lcom/laiwang/protocol/android/ah$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/android/ah$a;->f:Lcom/laiwang/protocol/android/ah$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/protocol/android/ah$a;->g:Lcom/laiwang/protocol/android/ah$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/protocol/android/ah$a;->h:Lcom/laiwang/protocol/android/ah$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/protocol/android/ah$a;->i:Lcom/laiwang/protocol/android/ah$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/android/ah$a;->k:[Lcom/laiwang/protocol/android/ah$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/laiwang/protocol/android/ah$a;->j:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/ah$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/laiwang/protocol/android/ah$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ah$a;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/ah$a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/laiwang/protocol/android/ah$a;->k:[Lcom/laiwang/protocol/android/ah$a;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/ah$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/ah$a;

    return-object v0
.end method
