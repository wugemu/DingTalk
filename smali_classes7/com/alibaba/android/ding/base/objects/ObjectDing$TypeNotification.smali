.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
.super Ljava/lang/Enum;
.source "ObjectDing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

.field public static final enum APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

.field public static final enum CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

.field public static final enum NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

.field public static final enum SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

.field public static final enum UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-string/jumbo v1, "NO_REMIND"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 238
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 239
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 240
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 241
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 236
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

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
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->value:I

    .line 248
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 264
    packed-switch p0, :pswitch_data_0

    .line 278
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 282
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :goto_0
    return-object v0

    .line 266
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 267
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    goto :goto_0

    .line 269
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 270
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    goto :goto_0

    .line 272
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 273
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    goto :goto_0

    .line 275
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 276
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->value:I

    return v0
.end method
