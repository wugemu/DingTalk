.class public final enum Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
.super Ljava/lang/Enum;
.source "DingAttachmentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum AUDIO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field public static final enum TEXT:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 12
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->TEXT:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 13
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "AUDIO"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->AUDIO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 14
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 15
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "FILE"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 16
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "LINK"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 17
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "HONGBAO"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 18
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "SPACE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 20
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    const-string/jumbo v1, "FORWARD_COMBINE"

    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->TEXT:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->AUDIO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->mType:I

    .line 24
    return-void
.end method

.method public static fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 28
    .local v0, "type1":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    packed-switch p0, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-object v0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->TEXT:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 34
    goto :goto_0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->AUDIO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 37
    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 40
    goto :goto_0

    .line 42
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 43
    goto :goto_0

    .line 45
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 46
    goto :goto_0

    .line 48
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 49
    goto :goto_0

    .line 51
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 52
    goto :goto_0

    .line 54
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->mType:I

    return v0
.end method
