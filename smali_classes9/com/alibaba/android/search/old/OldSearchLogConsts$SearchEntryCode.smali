.class public final enum Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;
.super Ljava/lang/Enum;
.source "OldSearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/OldSearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchEntryCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_CHAT_MSG_PER_CONV:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_CMAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_OA:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

.field public static final enum HP_MORE_SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;


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

    .line 26
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP"

    const/16 v2, 0xd2

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 27
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_CONTACTS"

    const/16 v2, 0xd3

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 28
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_EXTERNAL_CONTACTS"

    const/16 v2, 0xd4

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 29
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_MY_GROUP"

    const/16 v2, 0xd5

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 30
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_PUBLIC_GROUP"

    const/16 v2, 0xd6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 31
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_CHAT_MSG"

    const/4 v2, 0x5

    const/16 v3, 0xd7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 32
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_CHAT_MSG_PER_CONV"

    const/4 v2, 0x6

    const/16 v3, 0xd8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG_PER_CONV:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 33
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_DING"

    const/4 v2, 0x7

    const/16 v3, 0xd9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 34
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_FUNC"

    const/16 v2, 0x8

    const/16 v3, 0xda

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 35
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_SPACE"

    const/16 v2, 0x9

    const/16 v3, 0xdb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 36
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_CMAIL"

    const/16 v2, 0xa

    const/16 v3, 0xdc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CMAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 37
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP_MORE_OA"

    const/16 v2, 0xb

    const/16 v3, 0xdd

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_OA:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG_PER_CONV:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CMAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_OA:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->$VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->value:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->$VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->value:I

    return v0
.end method
