.class public final enum Lcom/alibaba/laiwang/alive/i;
.super Ljava/lang/Enum;
.source "RegState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/alive/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum q:Lcom/alibaba/laiwang/alive/i;

.field public static final enum r:Lcom/alibaba/laiwang/alive/i;

.field public static final enum s:Lcom/alibaba/laiwang/alive/i;

.field private static final synthetic t:[Lcom/alibaba/laiwang/alive/i;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/laiwang/alive/i;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/laiwang/alive/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/alive/i;->q:Lcom/alibaba/laiwang/alive/i;

    new-instance v0, Lcom/alibaba/laiwang/alive/i;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/laiwang/alive/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/alive/i;->r:Lcom/alibaba/laiwang/alive/i;

    new-instance v0, Lcom/alibaba/laiwang/alive/i;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/laiwang/alive/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/alive/i;->s:Lcom/alibaba/laiwang/alive/i;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/laiwang/alive/i;

    sget-object v1, Lcom/alibaba/laiwang/alive/i;->q:Lcom/alibaba/laiwang/alive/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/laiwang/alive/i;->r:Lcom/alibaba/laiwang/alive/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/laiwang/alive/i;->s:Lcom/alibaba/laiwang/alive/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/laiwang/alive/i;->t:[Lcom/alibaba/laiwang/alive/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/alibaba/laiwang/alive/i;->state:I

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/alive/i;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/laiwang/alive/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/alive/i;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/alive/i;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/laiwang/alive/i;->t:[Lcom/alibaba/laiwang/alive/i;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/alive/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/alive/i;

    return-object v0
.end method
