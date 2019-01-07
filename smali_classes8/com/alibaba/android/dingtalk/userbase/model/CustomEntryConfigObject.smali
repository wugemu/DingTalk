.class public Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;
.super Ljava/lang/Object;
.source "CustomEntryConfigObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject$EntrySettings;,
        Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject$FunctionSettings;
    }
.end annotation


# static fields
.field private static final KEY_ENTRY_SETTINGS:Ljava/lang/String; = "entry_setting"

.field private static final KEY_FUNCTION_SETTINGS:Ljava/lang/String; = "function_setting"

.field private static final KEY_SHOW_ADMIN_IN_ORG_INFO:Ljava/lang/String; = "orginfo_admin"

.field private static final KEY_SHOW_DING_INDEX:Ljava/lang/String; = "ding_index"

.field private static final KEY_SHOW_E_APP:Ljava/lang/String; = "e_app"

.field private static final KEY_SHOW_INVITATION:Ljava/lang/String; = "invitation"

.field private static final KEY_SHOW_MEDAL:Ljava/lang/String; = "medal"

.field private static final KEY_SHOW_MY_CUSTOMER_SERVICE:Ljava/lang/String; = "my_service"

.field private static final KEY_SHOW_ORG_SQUARE:Ljava/lang/String; = "home_square"

.field private static final KEY_SHOW_PROMOTION:Ljava/lang/String; = "promotion"

.field private static final KEY_SHOW_SCHOOL_RECRUITMENT:Ljava/lang/String; = "recruitment"

.field private static final KEY_SHOW_SMART_DEVICE:Ljava/lang/String; = "smart_device"

.field private static final KEY_SHOW_STUDY_CENTER:Ljava/lang/String; = "study_center"

.field private static final KEY_SHOW_WORK_CIRCLE:Ljava/lang/String; = "circle"

.field public static final STATUS_HIDE:I = 0x1

.field public static final STATUS_IN_DISCOVER:I = 0x2

.field public static final STATUS_SHOW:I


# instance fields
.field public showAdminInOrgInfo:I

.field public showDingIndex:I

.field public showEApp:I

.field public showInvitation:I

.field public showMedal:I

.field public showMyCustomerService:I

.field public showOrgSquare:I

.field public showPromotion:I

.field public showSchoolRecruitment:I

.field public showSmartDevice:I

.field public showStudyCenter:I

.field public showWorkCircle:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showAdminInOrgInfo:I

    .line 46
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    .line 51
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showOrgSquare:I

    .line 56
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    .line 61
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    .line 66
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    .line 71
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    .line 76
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    .line 81
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    .line 86
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    .line 91
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    .line 96
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    .line 99
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v2, "function_setting"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 103
    .local v1, "functionSettings":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v2, "orginfo_admin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showAdminInOrgInfo:I

    .line 107
    const-string/jumbo v2, "entry_setting"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    .local v0, "entrySettings":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v2, "circle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    .line 112
    const-string/jumbo v2, "home_square"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showOrgSquare:I

    .line 113
    const-string/jumbo v2, "ding_index"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    .line 114
    const-string/jumbo v2, "my_service"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    .line 115
    const-string/jumbo v2, "study_center"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    .line 116
    const-string/jumbo v2, "smart_device"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    .line 117
    const-string/jumbo v2, "promotion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    .line 118
    const-string/jumbo v2, "recruitment"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    .line 119
    const-string/jumbo v2, "invitation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    .line 120
    const-string/jumbo v2, "medal"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    .line 121
    const-string/jumbo v2, "e_app"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    goto :goto_0
.end method

.method private isInFound(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 138
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowFound()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    .line 126
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    .line 127
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    .line 128
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    .line 129
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    .line 130
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    .line 131
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    .line 132
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    .line 133
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    .line 134
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->isInFound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
