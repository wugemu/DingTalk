.class public final enum Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
.super Ljava/lang/Enum;
.source "MessageRecipientDataObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

.field public static final enum CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

.field public static final enum GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 183
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    const-string/jumbo v1, "GROUP_CONVERSATION"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    .line 184
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    const-string/jumbo v1, "CONTACT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->mValue:I

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->mValue:I

    return v0
.end method
