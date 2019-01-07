.class public final enum Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
.super Ljava/lang/Enum;
.source "IDataDingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/IDataDingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingCalendar:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingReceived:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingSent:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingTask:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum DingUnconfirmed:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingReceived"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingReceived:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 10
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingSent"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingSent:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 11
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingAll"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 12
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingDeleted"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 13
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingTask"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingTask:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 14
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingUnconfirmed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingUnconfirmed:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 15
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "DingCalendar"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingCalendar:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 16
    new-instance v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingReceived:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingSent:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingTask:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingUnconfirmed:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingCalendar:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

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
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->mValue:I

    .line 22
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 29
    packed-switch p0, :pswitch_data_0

    .line 45
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingReceived:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingSent:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 35
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingTask:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 41
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingUnconfirmed:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 43
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingCalendar:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->mValue:I

    return v0
.end method
