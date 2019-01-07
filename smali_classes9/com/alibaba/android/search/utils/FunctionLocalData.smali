.class public final enum Lcom/alibaba/android/search/utils/FunctionLocalData;
.super Ljava/lang/Enum;
.source "FunctionLocalData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/utils/FunctionLocalData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ADD_FRIEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ATTEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ATTEND_EXPORT_REPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ATTEND_SCHEDULING:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ATTEND_STATISTICS:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum CALL:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum CREATE_ORG:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum DING:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum DING_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum FAVORITE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum FILE_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum FRIEND_REQUEST:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum JOIN_GROUP_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum MAIL:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum MANAGER_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum ORG_SQUARE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum PROJECTION:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum PROMOTION_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum RED_PACKAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SCAN:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SECRETARY:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SECURITY_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SERVICE_CENTER:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SHOPPING_CUSTOMER_MESSAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SPACE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SPACE_KNOWLEDGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum SPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum START_GROUP_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum START_SECURITY_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

.field public static final enum TEAM_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;


# instance fields
.field public mAvatarResId:I

.field public mDescResId:I

.field public mId:I

.field public mNameResId:I

.field public mSupportI18N:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v1, "START_GROUP_CHAT"

    sget v4, Lemt$d;->function_icon_chat:I

    sget v5, Lemt$g;->dt_search_function_group_chat:I

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_GROUP_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 13
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "START_SECURITY_CHAT"

    sget v7, Lemt$d;->function_icon_security_chat:I

    sget v8, Lemt$g;->dt_search_function_security_chat:I

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_SECURITY_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 14
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "JOIN_GROUP_APPLY"

    sget v7, Lemt$d;->function_icon_join_group_apply:I

    sget v8, Lemt$g;->dt_search_function_join_group_apply:I

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->JOIN_GROUP_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 15
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "FILE_HELPER"

    sget v7, Lemt$d;->function_icon_file_helper:I

    sget v8, Lemt$g;->dt_search_function_file_assistant:I

    move v5, v13

    move v6, v13

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->FILE_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 16
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SECRETARY"

    sget v7, Lemt$d;->function_icon_secretary:I

    sget v8, Lemt$g;->dt_search_function_secretary:I

    move v5, v14

    move v6, v14

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECRETARY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 17
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "MANAGER_ASSISTANT"

    const/4 v5, 0x5

    const/4 v6, 0x5

    sget v7, Lemt$d;->function_icon_manage_assistant:I

    sget v8, Lemt$g;->dt_search_function_manage_assistant:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->MANAGER_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 18
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SECURITY_HELPER"

    const/4 v5, 0x6

    const/4 v6, 0x6

    sget v7, Lemt$d;->function_icon_security_helper:I

    sget v8, Lemt$g;->dt_search_function_security_helper:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECURITY_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 19
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "TEAM_APPLY"

    const/4 v5, 0x7

    const/4 v6, 0x7

    sget v7, Lemt$d;->function_icon_team_apply:I

    sget v8, Lemt$g;->dt_search_function_team_apply:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->TEAM_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 20
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ADD_FRIEND"

    const/16 v5, 0x8

    const/16 v6, 0x8

    sget v7, Lemt$d;->function_icon_addfriend:I

    sget v8, Lemt$g;->dt_search_function_add_contacts:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ADD_FRIEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 21
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "FRIEND_REQUEST"

    const/16 v5, 0x9

    const/16 v6, 0x9

    sget v7, Lemt$d;->function_icon_friend_request:I

    sget v8, Lemt$g;->dt_search_function_friend_request:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->FRIEND_REQUEST:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 22
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SCAN"

    const/16 v5, 0xa

    const/16 v6, 0xa

    sget v7, Lemt$d;->function_icon_qrcode:I

    sget v8, Lemt$g;->dt_search_function_scan:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SCAN:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 23
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "CALL"

    const/16 v5, 0xb

    const/16 v6, 0xb

    sget v7, Lemt$d;->function_icon_call:I

    sget v8, Lemt$g;->dt_search_function_call:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->CALL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 24
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "DING"

    const/16 v5, 0xc

    const/16 v6, 0xc

    sget v7, Lemt$d;->function_icon_ding:I

    sget v8, Lemt$g;->dt_search_function_ding:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 25
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "MAIL"

    const/16 v5, 0xd

    const/16 v6, 0xd

    sget v7, Lemt$d;->function_icon_cmail:I

    sget v8, Lemt$g;->dt_search_function_cmail:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->MAIL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 26
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SPACE"

    const/16 v5, 0xe

    const/16 v6, 0xe

    sget v7, Lemt$d;->function_icon_cspace:I

    sget v8, Lemt$g;->dt_search_function_cpace:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 27
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SPORT"

    const/16 v5, 0xf

    const/16 v6, 0xf

    sget v7, Lemt$d;->function_icon_sport:I

    sget v8, Lemt$g;->dt_search_function_sport:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 28
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "DING_ASSISTANT"

    const/16 v5, 0x10

    const/16 v6, 0x10

    sget v7, Lemt$d;->function_icon_ding_helper:I

    sget v8, Lemt$g;->dt_functional_ding_assistant:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 29
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "RED_PACKAGE"

    const/16 v5, 0x11

    const/16 v6, 0x11

    sget v7, Lemt$d;->function_icon_red_package:I

    sget v8, Lemt$g;->dt_functional_redpocket_assistant:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->RED_PACKAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 30
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "PROMOTION_HELPER"

    const/16 v5, 0x12

    const/16 v6, 0x12

    sget v7, Lemt$d;->function_icon_promotion_helper:I

    sget v8, Lemt$g;->dt_search_function_promotion_helper:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROMOTION_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 31
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SERVICE_CENTER"

    const/16 v5, 0x13

    const/16 v6, 0x13

    sget v7, Lemt$d;->function_icon_service_center:I

    sget v8, Lemt$g;->dt_setting_my_service:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SERVICE_CENTER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 32
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "FAVORITE"

    const/16 v5, 0x14

    const/16 v6, 0x14

    sget v7, Lemt$d;->function_icon_favorite:I

    sget v8, Lemt$g;->dt_search_function_favorite:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->FAVORITE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 33
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "CREATE_ORG"

    const/16 v5, 0x15

    const/16 v6, 0x15

    sget v7, Lemt$d;->function_icon_create_org:I

    sget v8, Lemt$g;->dt_contact_my_info_create_team:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->CREATE_ORG:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 34
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SPACE_KNOWLEDGE"

    const/16 v5, 0x16

    const/16 v6, 0x16

    sget v7, Lemt$d;->function_icon_cspace_knowledge:I

    sget v8, Lemt$g;->dt_search_function_cspace_knowledge:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE_KNOWLEDGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 35
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ORG_SQUARE"

    const/16 v5, 0x17

    const/16 v6, 0x17

    sget v7, Lemt$d;->function_icon_org_square:I

    sget v8, Lemt$g;->dt_search_function_org_square:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ORG_SQUARE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 36
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "PROJECTION"

    const/16 v5, 0x18

    const/16 v6, 0x18

    sget v7, Lemt$d;->function_icon_projection:I

    sget v8, Lemt$g;->dt_search_function_projection:I

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROJECTION:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 37
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ATTEND_SCHEDULING"

    const/16 v5, 0x19

    const/16 v6, 0x19

    sget v7, Lemt$d;->function_icon_attend_scheduling:I

    sget v8, Lemt$g;->dt_search_function_attend_admin:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_SCHEDULING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 38
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ATTEND"

    const/16 v5, 0x1a

    const/16 v6, 0x1a

    sget v7, Lemt$d;->function_icon_attend:I

    sget v8, Lemt$g;->dt_search_function_attend:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 39
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ATTEND_STATISTICS"

    const/16 v5, 0x1b

    const/16 v6, 0x1b

    sget v7, Lemt$d;->function_icon_attend_statistics:I

    sget v8, Lemt$g;->dt_search_function_attend_statistics:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_STATISTICS:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 40
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "ATTEND_EXPORT_REPORT"

    const/16 v5, 0x1c

    const/16 v6, 0x1c

    sget v7, Lemt$d;->function_icon_attend_export_report:I

    sget v8, Lemt$g;->dt_search_function_attend_export_report:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_EXPORT_REPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 41
    new-instance v3, Lcom/alibaba/android/search/utils/FunctionLocalData;

    const-string/jumbo v4, "SHOPPING_CUSTOMER_MESSAGE"

    const/16 v5, 0x1d

    const/16 v6, 0x1d

    sget v7, Lemt$d;->function_icon_shopping_customer_message:I

    sget v8, Lemt$g;->dt_im_converation_taobao_list_title:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/search/utils/FunctionLocalData;->SHOPPING_CUSTOMER_MESSAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 10
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/alibaba/android/search/utils/FunctionLocalData;

    sget-object v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_GROUP_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_SECURITY_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->JOIN_GROUP_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v1, v0, v12

    sget-object v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->FILE_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v1, v0, v13

    sget-object v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECRETARY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->MANAGER_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECURITY_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->TEAM_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ADD_FRIEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->FRIEND_REQUEST:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SCAN:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->CALL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->MAIL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->RED_PACKAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROMOTION_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SERVICE_CENTER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->FAVORITE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->CREATE_ORG:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE_KNOWLEDGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ORG_SQUARE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROJECTION:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_SCHEDULING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_STATISTICS:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_EXPORT_REPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alibaba/android/search/utils/FunctionLocalData;->SHOPPING_CUSTOMER_MESSAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->$VALUES:[Lcom/alibaba/android/search/utils/FunctionLocalData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 7
    .param p3, "id"    # I
    .param p4, "avatarResId"    # I
    .param p5, "nameResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIII)V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8
    .param p3, "id"    # I
    .param p4, "avatarResId"    # I
    .param p5, "nameResId"    # I
    .param p6, "descResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/search/utils/FunctionLocalData;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 1
    .param p3, "id"    # I
    .param p4, "avatarResId"    # I
    .param p5, "nameResId"    # I
    .param p6, "descResId"    # I
    .param p7, "supportI18N"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput v0, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mAvatarResId:I

    .line 45
    iput v0, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mNameResId:I

    .line 46
    iput v0, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mDescResId:I

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mSupportI18N:Z

    .line 58
    iput p3, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mId:I

    .line 59
    iput p4, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mAvatarResId:I

    .line 60
    iput p5, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mNameResId:I

    .line 61
    iput p6, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mDescResId:I

    .line 62
    iput-boolean p7, p0, Lcom/alibaba/android/search/utils/FunctionLocalData;->mSupportI18N:Z

    .line 63
    return-void
.end method

.method public static getValue(I)Lcom/alibaba/android/search/utils/FunctionLocalData;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "value":Lcom/alibaba/android/search/utils/FunctionLocalData;
    packed-switch p0, :pswitch_data_0

    .line 161
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_GROUP_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->START_SECURITY_CHAT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->JOIN_GROUP_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->FILE_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECRETARY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 83
    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->MANAGER_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 86
    goto :goto_0

    .line 88
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SECURITY_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 89
    goto :goto_0

    .line 91
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->TEAM_APPLY:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 92
    goto :goto_0

    .line 94
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ADD_FRIEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 95
    goto :goto_0

    .line 97
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->FRIEND_REQUEST:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 98
    goto :goto_0

    .line 100
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SCAN:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 101
    goto :goto_0

    .line 103
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->CALL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 104
    goto :goto_0

    .line 106
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 107
    goto :goto_0

    .line 109
    :pswitch_d
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->MAIL:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 110
    goto :goto_0

    .line 112
    :pswitch_e
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 113
    goto :goto_0

    .line 115
    :pswitch_f
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 116
    goto :goto_0

    .line 118
    :pswitch_10
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->DING_ASSISTANT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 119
    goto :goto_0

    .line 121
    :pswitch_11
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->RED_PACKAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 122
    goto :goto_0

    .line 124
    :pswitch_12
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROMOTION_HELPER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 125
    goto :goto_0

    .line 127
    :pswitch_13
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SERVICE_CENTER:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 128
    goto :goto_0

    .line 130
    :pswitch_14
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->FAVORITE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 131
    goto :goto_0

    .line 133
    :pswitch_15
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->CREATE_ORG:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 134
    goto :goto_0

    .line 136
    :pswitch_16
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SPACE_KNOWLEDGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 137
    goto :goto_0

    .line 139
    :pswitch_17
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ORG_SQUARE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 140
    goto :goto_0

    .line 142
    :pswitch_18
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->PROJECTION:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 143
    goto :goto_0

    .line 145
    :pswitch_19
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_SCHEDULING:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1a
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_1b
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_STATISTICS:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 152
    goto/16 :goto_0

    .line 154
    :pswitch_1c
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->ATTEND_EXPORT_REPORT:Lcom/alibaba/android/search/utils/FunctionLocalData;

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_1d
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->SHOPPING_CUSTOMER_MESSAGE:Lcom/alibaba/android/search/utils/FunctionLocalData;

    goto/16 :goto_0

    .line 68
    nop

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/utils/FunctionLocalData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/search/utils/FunctionLocalData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/utils/FunctionLocalData;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/utils/FunctionLocalData;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/search/utils/FunctionLocalData;->$VALUES:[Lcom/alibaba/android/search/utils/FunctionLocalData;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/utils/FunctionLocalData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/utils/FunctionLocalData;

    return-object v0
.end method
