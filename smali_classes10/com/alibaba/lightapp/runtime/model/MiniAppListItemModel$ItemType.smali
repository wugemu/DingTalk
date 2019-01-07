.class public final enum Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
.super Ljava/lang/Enum;
.source "MiniAppListItemModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum Empty:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum Footer:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum Group:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum INVALID:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum Item:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum MiniAppInChatItem:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field public static final enum SearchHeader:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;


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

    .line 33
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "INVALID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->INVALID:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 34
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "SearchHeader"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->SearchHeader:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 35
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "Group"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Group:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 36
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "Item"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Item:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 37
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "Empty"

    invoke-direct {v0, v1, v8, v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Empty:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 38
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "Footer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Footer:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 39
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    const-string/jumbo v1, "MiniAppInChatItem"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->INVALID:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->SearchHeader:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Group:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Item:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Empty:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Footer:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->$VALUES:[Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->mValue:I

    .line 46
    return-void
.end method

.method public static getItemTypeFromInt(I)Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 74
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->INVALID:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 78
    .local v0, "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :goto_0
    return-object v0

    .line 56
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->SearchHeader:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 57
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 59
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Group:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 60
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 62
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Item:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 63
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 65
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Empty:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 66
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 68
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Footer:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 69
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 71
    .end local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    :pswitch_5
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 72
    .restart local v0    # "itemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    goto :goto_0

    .line 54
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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->$VALUES:[Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->mValue:I

    return v0
.end method
