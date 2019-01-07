.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
.super Ljava/lang/Enum;
.source "ObjectDingSent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusDing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

.field public static final enum Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

.field public static final enum Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

.field public static final enum Notifying:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

.field public static final enum Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

.field public static final enum Waiting:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    const-string/jumbo v1, "Initialization"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 35
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    const-string/jumbo v1, "Notifying"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Notifying:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 36
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    const-string/jumbo v1, "Waiting"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Waiting:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 37
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    const-string/jumbo v1, "Completed"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 38
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Notifying:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Waiting:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->value:I

    .line 45
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 79
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 83
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    :goto_0
    return-object v0

    .line 63
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 64
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    goto :goto_0

    .line 67
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Notifying:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 68
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    goto :goto_0

    .line 71
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Waiting:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 72
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    goto :goto_0

    .line 75
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 76
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->value:I

    return v0
.end method
