.class public final enum Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
.super Ljava/lang/Enum;
.source "AssureModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/model/AssureModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

.field public static final enum Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

.field public static final enum Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

.field public static final enum Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

.field public static final enum UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 316
    new-instance v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 317
    new-instance v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    const-string/jumbo v1, "Group"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 318
    new-instance v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    const-string/jumbo v1, "Function"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 319
    new-instance v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    const-string/jumbo v1, "UnKown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->$VALUES:[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

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
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 323
    iput p3, p0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->code:I

    .line 324
    return-void
.end method

.method public static getAssureType(I)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 331
    packed-switch p0, :pswitch_data_0

    .line 333
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Contact:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 335
    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Group:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 335
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->Function:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    const-class v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->$VALUES:[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->code:I

    return v0
.end method
