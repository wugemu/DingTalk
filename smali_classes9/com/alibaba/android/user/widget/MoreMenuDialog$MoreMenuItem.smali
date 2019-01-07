.class public final enum Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
.super Ljava/lang/Enum;
.source "MoreMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/MoreMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoreMenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum EDIT_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum MORE:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum MY_INFO:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum SEND_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum SEND_FRIEND_REQUEST:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum SEND_FRIEND_REQUEST_AGAIN:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum SET_ALIAS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

.field public static final enum SET_ALIAS_TAGS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;


# instance fields
.field private itemStringIconId:I

.field private itemStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "SEND_FRIEND_REQUEST"

    sget v2, Lezg$l;->icon_addperson:I

    sget v3, Lezg$l;->menu_to_send:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_FRIEND_REQUEST:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 150
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "SEND_FRIEND_REQUEST_AGAIN"

    sget v2, Lezg$l;->icon_addperson:I

    sget v3, Lezg$l;->dt_contact_addFriend_resend_request:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_FRIEND_REQUEST_AGAIN:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 151
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "SET_ALIAS"

    sget v2, Lezg$l;->icon_compile:I

    sget v3, Lezg$l;->dt_contact_edit_remark:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SET_ALIAS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 152
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "SET_ALIAS_TAGS"

    sget v2, Lezg$l;->icon_compile:I

    sget v3, Lezg$l;->dt_contact_edit_remark_and_tag:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SET_ALIAS_TAGS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 153
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "SEND_CARD"

    sget v2, Lezg$l;->icon_businesscard:I

    sget v3, Lezg$l;->dt_contacts_send_name_card:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 154
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "EDIT_CARD"

    const/4 v2, 0x5

    sget v3, Lezg$l;->icon_compile:I

    sget v4, Lezg$l;->dt_contacts_edit_card:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->EDIT_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 155
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "MY_INFO"

    const/4 v2, 0x6

    sget v3, Lezg$l;->icon_signal:I

    sget v4, Lezg$l;->dt_contact_my_info_page_title:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->MY_INFO:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 156
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    const-string/jumbo v1, "MORE"

    const/4 v2, 0x7

    sget v3, Lezg$l;->icon_more:I

    sget v4, Lezg$l;->more:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->MORE:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 148
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    sget-object v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_FRIEND_REQUEST:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_FRIEND_REQUEST_AGAIN:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SET_ALIAS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SET_ALIAS_TAGS:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->SEND_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->EDIT_CARD:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->MY_INFO:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->MORE:Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->$VALUES:[Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "itemStringIconId"    # I
    .param p4, "itemStringId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringIconId:I

    .line 163
    iput p4, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringId:I

    .line 164
    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringIconId:I

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->$VALUES:[Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    return-object v0
.end method


# virtual methods
.method public final getItemStringIconId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringIconId:I

    return v0
.end method

.method public final getItemStringId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->itemStringId:I

    return v0
.end method
