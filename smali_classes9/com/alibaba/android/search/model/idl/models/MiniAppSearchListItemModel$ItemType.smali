.class public final enum Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
.super Ljava/lang/Enum;
.source "MiniAppSearchListItemModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum Empty:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum Footer:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum Group:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum Header:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum INVALID:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum Item:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

.field public static final enum MiniAppInChatItem:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;


# instance fields
.field private mValue:I


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
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "INVALID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->INVALID:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 12
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "Header"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Header:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 13
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "Group"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Group:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 14
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "Item"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Item:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 15
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "Empty"

    invoke-direct {v0, v1, v8, v7}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Empty:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 16
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "Footer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Footer:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 17
    new-instance v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    const-string/jumbo v1, "MiniAppInChatItem"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    sget-object v1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->INVALID:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Header:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Group:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Item:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Empty:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Footer:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->$VALUES:[Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->mValue:I

    .line 24
    return-void
.end method

.method public static getItemTypeFromInt(I)Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 52
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->INVALID:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 56
    .local v0, "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :goto_0
    return-object v0

    .line 34
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Header:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 35
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 37
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Group:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 38
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 40
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Item:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 41
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 43
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Empty:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 44
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 46
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Footer:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 47
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 49
    .end local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 50
    .restart local v0    # "itemType":Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->$VALUES:[Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->mValue:I

    return v0
.end method
