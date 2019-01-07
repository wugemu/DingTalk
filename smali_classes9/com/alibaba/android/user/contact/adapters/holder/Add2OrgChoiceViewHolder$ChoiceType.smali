.class public final enum Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
.super Ljava/lang/Enum;
.source "Add2OrgChoiceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChoiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum Batch:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum DingTalkInner:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum EntryRegistration:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum Face2FaceQrScan:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum Facebook:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum Manually:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum PatriarchInvite:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum PhoneContact:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum QQ:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum SMS:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum System:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public static final enum WhatsApp:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;


# instance fields
.field private mIconFontColorResId:I

.field private mIconFontResId:I

.field private mTitleStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v1, "PatriarchInvite"

    sget v3, Lezg$l;->icon_school:I

    sget v4, Lezg$e;->ui_common_green1_color:I

    sget v5, Lezg$l;->dt_invite_patriarch:I

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PatriarchInvite:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 133
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "DingTalkInner"

    sget v6, Lezg$l;->icon_dingtalk:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->dt_invite_title_share_dingtalk:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->DingTalkInner:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 137
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "Wechat"

    sget v6, Lezg$l;->icon_wechat_fill:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_invite_member_to_organization_by_wechat:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 141
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "QQ"

    sget v6, Lezg$l;->icon_qq_fill:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->dt_invite_member_to_organization_by_qq:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->QQ:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 145
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "WhatsApp"

    sget v6, Lezg$l;->icon_whatsapp_fill:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_invite_member_to_organization_by_whatsapp:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->WhatsApp:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 150
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "Facebook"

    const/4 v5, 0x5

    sget v6, Lezg$l;->icon_facebook_fill:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->dt_invite_member_to_organization_by_facebook:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Facebook:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 154
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "System"

    const/4 v5, 0x6

    sget v6, Lezg$l;->icon_more:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->more:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->System:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 158
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "SMS"

    const/4 v5, 0x7

    sget v6, Lezg$l;->icon_message_fill:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_invite_member_to_organization_by_sms:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->SMS:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 162
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "PhoneContact"

    const/16 v5, 0x8

    sget v6, Lezg$l;->icon_addressbook_fill:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_user_org_add_people_mode_auto:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PhoneContact:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 166
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "Manually"

    const/16 v5, 0x9

    sget v6, Lezg$l;->icon_writelog_fill:I

    sget v7, Lezg$e;->ui_common_orange1_color:I

    sget v8, Lezg$l;->dt_add_member_to_organization_by_manual_input:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Manually:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 170
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "EntryRegistration"

    const/16 v5, 0xa

    sget v6, Lezg$l;->icon_prform_fill:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->dt_invite_write_entry_registration:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->EntryRegistration:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 174
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "Face2FaceQrScan"

    const/16 v5, 0xb

    sget v6, Lezg$l;->icon_scan_fill:I

    sget v7, Lezg$e;->ui_common_blue1_color:I

    sget v8, Lezg$l;->dt_add_member_to_organization_by_qrcode_face_to_face:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Face2FaceQrScan:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 179
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "TEAM_ID"

    const/16 v5, 0xc

    sget v6, Lezg$l;->icon_id:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_invite_by_org_code:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 184
    new-instance v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    const-string/jumbo v4, "Batch"

    const/16 v5, 0xd

    sget v6, Lezg$l;->icon_excel_fill:I

    sget v7, Lezg$e;->ui_common_green1_color:I

    sget v8, Lezg$l;->dt_add_members_to_organization_batch:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Batch:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    .line 125
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    sget-object v1, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PatriarchInvite:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->DingTalkInner:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->QQ:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->WhatsApp:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Facebook:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->System:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->SMS:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->PhoneContact:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Manually:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->EntryRegistration:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Face2FaceQrScan:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->TEAM_ID:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Batch:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->$VALUES:[Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "iconFontResId"    # I
    .param p4, "iconFontColorResId"    # I
    .param p5, "titleStringId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput p3, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mIconFontResId:I

    .line 192
    iput p4, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mIconFontColorResId:I

    .line 193
    iput p5, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mTitleStringId:I

    .line 194
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->$VALUES:[Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    return-object v0
.end method


# virtual methods
.method public final getIconFontColorResId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mIconFontColorResId:I

    return v0
.end method

.method public final getIconFontResId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mIconFontResId:I

    return v0
.end method

.method public final getTitleStringId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->mTitleStringId:I

    return v0
.end method
