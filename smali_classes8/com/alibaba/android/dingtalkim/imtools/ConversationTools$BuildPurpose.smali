.class public final enum Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
.super Ljava/lang/Enum;
.source "ConversationTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum addGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum create:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum groupBanClose:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum groupBanOpen:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum quit:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum removeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum titleChange:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field public static final enum transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;


# instance fields
.field private mTemplateCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "addMembers"

    const-string/jumbo v2, "im_add_member"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 308
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "removeMembers"

    const-string/jumbo v2, "im_rm_member"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "createEnterprise"

    const-string/jumbo v2, "im_start_secured_chat"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 310
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "create"

    const-string/jumbo v2, "im_start_chat"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->create:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 311
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "quit"

    const-string/jumbo v2, "im_quit_group"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->quit:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 312
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "titleChange"

    const/4 v2, 0x5

    const-string/jumbo v3, "im_update_group_title"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->titleChange:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 313
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "transmitConversation"

    const/4 v2, 0x6

    const-string/jumbo v3, "im_group_owner_changed"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 314
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "addGroupAvatar"

    const/4 v2, 0x7

    const-string/jumbo v3, "conv_add_group_avatar"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 315
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "removeGroupAvatar"

    const/16 v2, 0x8

    const-string/jumbo v3, "conv_remove_group_avatar"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 316
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "changeGroupAvatar"

    const/16 v2, 0x9

    const-string/jumbo v3, "conv_change_group_avatar"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 317
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "groupBanOpen"

    const/16 v2, 0xa

    const-string/jumbo v3, "group_ban_open"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanOpen:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 318
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    const-string/jumbo v1, "groupBanClose"

    const/16 v2, 0xb

    const-string/jumbo v3, "group_ban_close"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanClose:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    .line 306
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->create:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->quit:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->titleChange:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanOpen:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->groupBanClose:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "templateCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 323
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->mTemplateCode:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    return-object v0
.end method


# virtual methods
.method public final getTemplateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->mTemplateCode:Ljava/lang/String;

    return-object v0
.end method
