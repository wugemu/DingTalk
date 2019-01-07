.class public final enum Lcom/alibaba/alimei/adpater/message/IdentityField;
.super Ljava/lang/Enum;
.source "IdentityField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/adpater/message/IdentityField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum CURSOR_POSITION:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum EMAIL:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum FOOTER_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field static final IDENTITY_VERSION_1:Ljava/lang/String; = "!"

.field public static final enum LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum MESSAGE_FORMAT:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum MESSAGE_READ_RECEIPT:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum NAME:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum ORIGINAL_MESSAGE:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum QUOTED_TEXT_MODE:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum QUOTE_STYLE:Lcom/alibaba/alimei/adpater/message/IdentityField;

.field public static final enum SIGNATURE:Lcom/alibaba/alimei/adpater/message/IdentityField;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "LENGTH"

    const-string/jumbo v2, "l"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 8
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "OFFSET"

    const-string/jumbo v2, "o"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 9
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "FOOTER_OFFSET"

    const-string/jumbo v2, "fo"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->FOOTER_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 10
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "PLAIN_LENGTH"

    const-string/jumbo v2, "pl"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 11
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "PLAIN_OFFSET"

    const-string/jumbo v2, "po"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 12
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "MESSAGE_FORMAT"

    const/4 v2, 0x5

    const-string/jumbo v3, "f"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->MESSAGE_FORMAT:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 13
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "MESSAGE_READ_RECEIPT"

    const/4 v2, 0x6

    const-string/jumbo v3, "r"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->MESSAGE_READ_RECEIPT:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 14
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "SIGNATURE"

    const/4 v2, 0x7

    const-string/jumbo v3, "s"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->SIGNATURE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 15
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "NAME"

    const/16 v2, 0x8

    const-string/jumbo v3, "n"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->NAME:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 16
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "EMAIL"

    const/16 v2, 0x9

    const-string/jumbo v3, "e"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->EMAIL:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 18
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "ORIGINAL_MESSAGE"

    const/16 v2, 0xa

    const-string/jumbo v3, "m"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 19
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "CURSOR_POSITION"

    const/16 v2, 0xb

    const-string/jumbo v3, "p"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->CURSOR_POSITION:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 20
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "QUOTED_TEXT_MODE"

    const/16 v2, 0xc

    const-string/jumbo v3, "q"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 21
    new-instance v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    const-string/jumbo v1, "QUOTE_STYLE"

    const/16 v2, 0xd

    const-string/jumbo v3, "qs"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/adpater/message/IdentityField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTE_STYLE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    .line 6
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/alibaba/alimei/adpater/message/IdentityField;

    sget-object v1, Lcom/alibaba/alimei/adpater/message/IdentityField;->LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/adpater/message/IdentityField;->OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/adpater/message/IdentityField;->FOOTER_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->MESSAGE_FORMAT:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->MESSAGE_READ_RECEIPT:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->SIGNATURE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->NAME:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->EMAIL:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->CURSOR_POSITION:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTE_STYLE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->$VALUES:[Lcom/alibaba/alimei/adpater/message/IdentityField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/alibaba/alimei/adpater/message/IdentityField;->value:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getIntegerFields()[Lcom/alibaba/alimei/adpater/message/IdentityField;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/alimei/adpater/message/IdentityField;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->FOOTER_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/adpater/message/IdentityField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/adpater/message/IdentityField;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/adpater/message/IdentityField;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/alimei/adpater/message/IdentityField;->$VALUES:[Lcom/alibaba/alimei/adpater/message/IdentityField;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/adpater/message/IdentityField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/adpater/message/IdentityField;

    return-object v0
.end method


# virtual methods
.method public final value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/IdentityField;->value:Ljava/lang/String;

    return-object v0
.end method
