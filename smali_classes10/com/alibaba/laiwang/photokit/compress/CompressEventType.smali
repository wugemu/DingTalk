.class public final enum Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
.super Ljava/lang/Enum;
.source "CompressEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/compress/CompressEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field public static final enum CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field public static final enum COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field public static final enum COMPRESSING:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field public static final enum FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field public static final enum START:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8
    new-instance v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v7, v3}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->START:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 10
    new-instance v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    const-string/jumbo v1, "COMPRESSING"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPRESSING:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 12
    new-instance v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 14
    new-instance v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 16
    new-instance v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    const-string/jumbo v1, "FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->START:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPRESSING:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->$VALUES:[Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->mValue:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->$VALUES:[Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->mValue:I

    return v0
.end method
