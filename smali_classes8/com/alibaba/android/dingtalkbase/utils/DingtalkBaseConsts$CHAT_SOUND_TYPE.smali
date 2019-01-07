.class public final enum Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;
.super Ljava/lang/Enum;
.source "DingtalkBaseConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHAT_SOUND_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

.field public static final enum DEFAULT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

.field public static final enum NONE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1105
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->NONE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    .line 1106
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    const-string/jumbo v1, "DEFAULT"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->DEFAULT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    .line 1104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->NONE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->DEFAULT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

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
    .line 1110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1111
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->value:I

    .line 1112
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1119
    packed-switch p0, :pswitch_data_0

    .line 1123
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->DEFAULT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    :goto_0
    return-object v0

    .line 1121
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->NONE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1104
    const-class v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;->value:I

    return v0
.end method
