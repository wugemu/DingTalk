.class public final enum Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;
.super Ljava/lang/Enum;
.source "MineGroupConversationFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

.field public static final enum CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

.field public static final enum JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    const-string/jumbo v1, "CREATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    .line 139
    new-instance v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    const-string/jumbo v1, "JOIN"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->$VALUES:[Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->value:I

    .line 145
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 152
    packed-switch p0, :pswitch_data_0

    .line 158
    sget-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    goto :goto_0

    .line 156
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->$VALUES:[Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->value:I

    return v0
.end method
