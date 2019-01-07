.class public final enum Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
.super Ljava/lang/Enum;
.source "IMConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/IMConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENCRYPT_SEQUENCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

.field public static final enum FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

.field public static final enum FIRST_THIRD_PARTY:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    new-instance v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    const-string/jumbo v1, "FIRST_DD"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    .line 307
    new-instance v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    const-string/jumbo v1, "FIRST_THIRD_PARTY"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_THIRD_PARTY:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_THIRD_PARTY:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->$VALUES:[Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->value:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 326
    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    :goto_1
    return-object v0

    .line 320
    :pswitch_0
    const-string/jumbo v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    goto :goto_1

    .line 324
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_THIRD_PARTY:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    goto :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->$VALUES:[Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->value:Ljava/lang/String;

    return-object v0
.end method
