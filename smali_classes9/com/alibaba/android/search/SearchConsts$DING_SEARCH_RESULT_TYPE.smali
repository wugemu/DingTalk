.class public final enum Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
.super Ljava/lang/Enum;
.source "SearchConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/SearchConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DING_SEARCH_RESULT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field public static final enum ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field public static final enum BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field public static final enum SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const-string/jumbo v1, "SENDER"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 141
    new-instance v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const-string/jumbo v1, "BODY"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 142
    new-instance v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const-string/jumbo v1, "ATTACHMENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->$VALUES:[Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->value:I

    .line 148
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 163
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    goto :goto_0

    .line 159
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    goto :goto_0

    .line 161
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->$VALUES:[Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->value:I

    return v0
.end method
