.class public final enum Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
.super Ljava/lang/Enum;
.source "ConvertEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

.field public static final enum CANCEL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

.field public static final enum COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

.field public static final enum CONVERTING:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

.field public static final enum FAIL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

.field public static final enum START:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;


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

    .line 9
    new-instance v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v7, v3}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->START:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 11
    new-instance v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    const-string/jumbo v1, "CONVERTING"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->CONVERTING:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 13
    new-instance v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 15
    new-instance v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 17
    new-instance v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    const-string/jumbo v1, "FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->FAIL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->START:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->CONVERTING:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->FAIL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->$VALUES:[Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->mValue:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->$VALUES:[Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->mValue:I

    return v0
.end method
