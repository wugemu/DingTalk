.class final enum Lcom/alibaba/wukong/auth/g$b;
.super Ljava/lang/Enum;
.source "DefaultAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/auth/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum K:Lcom/alibaba/wukong/auth/g$b;

.field public static final enum L:Lcom/alibaba/wukong/auth/g$b;

.field public static final enum M:Lcom/alibaba/wukong/auth/g$b;

.field private static final synthetic N:[Lcom/alibaba/wukong/auth/g$b;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 552
    new-instance v0, Lcom/alibaba/wukong/auth/g$b;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/auth/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/auth/g$b;->K:Lcom/alibaba/wukong/auth/g$b;

    new-instance v0, Lcom/alibaba/wukong/auth/g$b;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/auth/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    new-instance v0, Lcom/alibaba/wukong/auth/g$b;

    const-string/jumbo v1, "FAILED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/auth/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/auth/g$b;->M:Lcom/alibaba/wukong/auth/g$b;

    .line 551
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/auth/g$b;

    sget-object v1, Lcom/alibaba/wukong/auth/g$b;->K:Lcom/alibaba/wukong/auth/g$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/auth/g$b;->M:Lcom/alibaba/wukong/auth/g$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/wukong/auth/g$b;->N:[Lcom/alibaba/wukong/auth/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 555
    iput p3, p0, Lcom/alibaba/wukong/auth/g$b;->status:I

    .line 556
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/auth/g$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 551
    const-class v0, Lcom/alibaba/wukong/auth/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/g$b;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/auth/g$b;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/alibaba/wukong/auth/g$b;->N:[Lcom/alibaba/wukong/auth/g$b;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/auth/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/auth/g$b;

    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/alibaba/wukong/auth/g$b;->status:I

    return v0
.end method
