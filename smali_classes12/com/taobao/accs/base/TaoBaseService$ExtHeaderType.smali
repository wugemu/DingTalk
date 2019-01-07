.class public final enum Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
.super Ljava/lang/Enum;
.source "TaoBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/base/TaoBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtHeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_BUSINESS"

    invoke-direct {v0, v1, v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 16
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_SID"

    invoke-direct {v0, v1, v4}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 17
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_USERID"

    invoke-direct {v0, v1, v5}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 18
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_COOKIE"

    invoke-direct {v0, v1, v6}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 19
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_TAG"

    invoke-direct {v0, v1, v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 20
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_STATUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 21
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_DELAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 22
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_EXPIRE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 23
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_LOCATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 24
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_UNIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 25
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const-string/jumbo v1, "TYPE_NEED_BUSINESS_ACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 14
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->$VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 27
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 31
    :pswitch_1
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 39
    :pswitch_5
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 41
    :pswitch_6
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 43
    :pswitch_7
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 45
    :pswitch_8
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 47
    :pswitch_9
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 49
    :pswitch_a
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->$VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v0}, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object v0
.end method
