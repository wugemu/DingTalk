.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
.super Ljava/lang/Enum;
.source "ObjectDingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

.field public static final enum Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

.field public static final enum Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

.field public static final enum UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    const-string/jumbo v1, "Message"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 32
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    const-string/jumbo v1, "Raw"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 33
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->value:I

    .line 38
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 64
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    :goto_0
    return-object v0

    .line 52
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 53
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    goto :goto_0

    .line 56
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 57
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->value:I

    return v0
.end method
