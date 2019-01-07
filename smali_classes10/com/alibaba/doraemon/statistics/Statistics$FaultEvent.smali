.class public final Lcom/alibaba/doraemon/statistics/Statistics$FaultEvent;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/statistics/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaultEvent"
.end annotation


# static fields
.field public static final EXCEPTION_CONTACT_ENTERPRISE_MEMBER_INFO:I = 0x33f5

.field public static final EXCEPTION_CONTACT_FRIENDS:I = 0x33f6

.field public static final EXCEPTION_CONTACT_GROUP:I = 0x332d

.field public static final EXCEPTION_CONTACT_LOGIN:I = 0x3459

.field public static final EXCEPTION_CONTACT_REGISTER:I = 0x345a

.field public static final EXCEPTION_CONTACT_SEARCH_CLOUD_DISK:I = 0x34bf

.field public static final EXCEPTION_CONTACT_SEARCH_CONTENT:I = 0x34be

.field public static final EXCEPTION_CONTACT_SEARCH_MEMBER:I = 0x34bd

.field public static final EXCEPTION_CONTACT_SELECT_COMPONENTS:I = 0x3391

.field public static final EXCEPTION_CONTACT_SETTINGS_NOTIFICATION:I = 0x3521

.field public static final EXCEPTION_CONTACT_SETTINGS_PASSWORD:I = 0x3523

.field public static final EXCEPTION_CONTACT_SETTINGS_PERSON:I = 0x3522

.field public static final EXCEPTION_CONTACT_SETTINGS_PHONE_NUMBER:I = 0x3524

.field public static final EXCEPTION_CONTACT_SHOW:I = 0x33f7

.field public static final EXCEPTION_CONTACT_VERIFICATION_CODE:I = 0x345b

.field public static final EXCEPTION_IMDING_DING_APP:I = 0x2bc2

.field public static final EXCEPTION_IMDING_DING_INPUT:I = 0x2bcc

.field public static final EXCEPTION_IMDING_DING_LIST:I = 0x2bc5

.field public static final EXCEPTION_IMDING_DING_MESSAGE:I = 0x2bc3

.field public static final EXCEPTION_IMDING_DING_PHONE:I = 0x2bc4

.field public static final EXCEPTION_IMDING_DING_PHONE_NUMBER:I = 0x2bc6

.field public static final EXCEPTION_IMDING_DING_RECEIVER_ADD:I = 0x2bcb

.field public static final EXCEPTION_IMDING_DING_REFUSE_ANSWER:I = 0x2bc7

.field public static final EXCEPTION_IMDING_DING_REMIND:I = 0x2bc9

.field public static final EXCEPTION_IMDING_DING_REMIND_TIME:I = 0x2bca

.field public static final EXCEPTION_IMDING_DING_SR:I = 0x2bc1

.field public static final EXCEPTION_IMDING_DING_SR_INCONSISTENT:I = 0x2bc8

.field public static final EXCEPTION_IMDING_GROUP_PULL:I = 0x2b61

.field public static final EXCEPTION_IMDING_IMAGE_SR:I = 0x2b5e

.field public static final EXCEPTION_IMDING_SESSION_PULL:I = 0x2b60

.field public static final EXCEPTION_IMDING_SESSION_SET:I = 0x2b62

.field public static final EXCEPTION_IMDING_TEXT_SR:I = 0x2b5d

.field public static final EXCEPTION_IMDING_TEXT_STATUS:I = 0x2b5f

.field public static final EXCEPTION_OTHER_ENTERPRISE_CONTACT_MANAGER:I = 0x377a

.field public static final EXCEPTION_OTHER_ENTERPRISE_FG_BG_INCONSISTENT:I = 0x377c

.field public static final EXCEPTION_OTHER_ENTERPRISE_IMPORT:I = 0x377d

.field public static final EXCEPTION_OTHER_ENTERPRISE_REGISTER:I = 0x3779

.field public static final EXCEPTION_OTHER_ENTERPRISE_TURNOVER_MANAGER:I = 0x377b

.field public static final EXCEPTION_OTHER_MICRO_API_CORE:I = 0x3841

.field public static final EXCEPTION_OTHER_MICRO_API_NON_CORE:I = 0x3842

.field public static final EXCEPTION_OTHER_MICRO_APP_DEFAULT:I = 0x37de

.field public static final EXCEPTION_OTHER_MICRO_APP_ENTRANCE:I = 0x37dd

.field public static final EXCEPTION_OTHER_WEB_DOWNLOAD:I = 0x3715

.field public static final EXCEPTION_OTHER_WEB_HOME_PAGE:I = 0x3716

.field public static final EXCEPTION_PHONE_CONFERENCE_CALL_ORDER:I = 0x2f4b

.field public static final EXCEPTION_PHONE_CONFERENCE_CHARGE_STATISTICS:I = 0x2f4d

.field public static final EXCEPTION_PHONE_CONFERENCE_FINISHED:I = 0x2f48

.field public static final EXCEPTION_PHONE_CONFERENCE_FREE_STATISTICS:I = 0x2f4c

.field public static final EXCEPTION_PHONE_CONFERENCE_MEMBER_ADD:I = 0x2f46

.field public static final EXCEPTION_PHONE_CONFERENCE_ONLINE_COMMUNICATION:I = 0x2f47

.field public static final EXCEPTION_PHONE_CONFERENCE_QUALITY:I = 0x2f4a

.field public static final EXCEPTION_PHONE_CONFERENCE_RECEIVED:I = 0x2f49

.field public static final EXCEPTION_PHONE_CONFERENCE_START:I = 0x2f45

.field public static final EXCEPTION_WUKONG_CLOUD_SETTING:I = 0x56b9

.field public static final EXCEPTION_WUKONG_PUSH:I = 0x5a3d

.field public static final EXCEPTION_WUKONG_SESSION_GROUP_LIST:I = 0x5e29

.field public static final EXCEPTION_WUKONG_SESSION_IMAGE:I = 0x5e26

.field public static final EXCEPTION_WUKONG_SESSION_LIST_PULL:I = 0x5e28

.field public static final EXCEPTION_WUKONG_SESSION_MESSAGE_STATUS:I = 0x5e27

.field public static final EXCEPTION_WUKONG_SESSION_SETTING:I = 0x5e2a

.field public static final EXCEPTION_WUKONG_SESSION_TEXT:I = 0x5e25

.field public static final EXCEPTION_WUKONG_USER_LOGIN:I = 0x5655

.field public static final EXCEPTION_WUKONG_WEB_BG_ACCOUNT_MANAGE:I = 0x526f

.field public static final EXCEPTION_WUKONG_WEB_BG_APP_CONFIG:I = 0x526d

.field public static final EXCEPTION_WUKONG_WEB_BG_PUSH_CERTIFICATE:I = 0x526e

.field public static final EXCEPTION_WUKONG_WEB_BG_STATISTICS:I = 0x5270

.field public static final EXCEPTION_WUKONG_WEB_HOME_PAGE:I = 0x5399

.field public static final EXCEPTION_WUKONG_WEB_LOGIN:I = 0x5335

.field public static final EXCEPTION_WUKONG_WEB_REGISTER:I = 0x52d1

.field public static final EXCEPTION_WUKONG_WEB_SDK_PUBLISH:I = 0x53fd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
