.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
.super Ljava/lang/Enum;
.source "ObjectDing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

.field public static final enum Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

.field public static final enum Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

.field public static final enum Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

.field public static final enum UnDefined:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

.field public static final enum Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;


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

    .line 295
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 296
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    const-string/jumbo v1, "Receiver"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 297
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    const-string/jumbo v1, "Sender"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 298
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    const-string/jumbo v1, "Both"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 299
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    const-string/jumbo v1, "UnDefined"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->UnDefined:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 294
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->UnDefined:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 305
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->value:I

    .line 306
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 310
    packed-switch p0, :pswitch_data_0

    .line 324
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->UnDefined:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 327
    .local v0, "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :goto_0
    return-object v0

    .line 312
    .end local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 313
    .restart local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    goto :goto_0

    .line 315
    .end local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 316
    .restart local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    goto :goto_0

    .line 318
    .end local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 319
    .restart local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    goto :goto_0

    .line 321
    .end local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 322
    .restart local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->value:I

    return v0
.end method
