.class public final enum Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
.super Ljava/lang/Enum;
.source "SearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/utils/log/SearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchTabCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum NEW_RETAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

.field public static final enum SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 30
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "ALL"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 31
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "CONTACT"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 32
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "MY_GROUP"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 33
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "MSG"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 34
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "FUNCTION"

    const/4 v2, 0x5

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 35
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "DING"

    const/4 v2, 0x6

    const/16 v3, 0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 36
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "EXTERNAL_CONTACT"

    const/4 v2, 0x7

    const/16 v3, 0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 37
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "PUBLIC_GROUP"

    const/16 v2, 0x8

    const/16 v3, 0xcf

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 38
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "MAIL"

    const/16 v2, 0x9

    const/16 v3, 0xd0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 39
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "SPACE"

    const/16 v2, 0xa

    const/16 v3, 0xd1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 40
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "LIGHT_APP"

    const/16 v2, 0xb

    const/16 v3, 0xd2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 41
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "ORG_HOMEPAGE"

    const/16 v2, 0xc

    const/16 v3, 0xd3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 42
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "SEARCH_MORE"

    const/16 v2, 0xd

    const/16 v3, 0xd4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 43
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "NEW_RETAIL"

    const/16 v2, 0xe

    const/16 v3, 0xd5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NEW_RETAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 44
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "DEPT"

    const/16 v2, 0xf

    const/16 v3, 0xd6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 45
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "MINI_APP"

    const/16 v2, 0x10

    const/16 v3, 0xd7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 46
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    const-string/jumbo v1, "FAVORITE"

    const/16 v2, 0x11

    const/16 v3, 0xd8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 27
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NEW_RETAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->value:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->value:I

    return v0
.end method
