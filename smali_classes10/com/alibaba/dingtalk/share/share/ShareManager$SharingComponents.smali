.class public final enum Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;
.super Ljava/lang/Enum;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharingComponents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Alipay:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum CONNECTION:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Circle:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum FaceBook:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum LaiwangDynamic:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum LaiwangFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum SaveToDevice:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum SmsShare:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum UCweb:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

.field public static final enum WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "DingTalk"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 87
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CONNECTION:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 88
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Circle"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Circle:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 89
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "LaiwangFriend"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->LaiwangFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 90
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "LaiwangDynamic"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->LaiwangDynamic:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 91
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Browser"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 92
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "UCweb"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->UCweb:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 93
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Fresh"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 94
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "CopyLink"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 95
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Weibo"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 96
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "WeixinFriend"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 97
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "WeixinGroup"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 98
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "QQFriend"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 99
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Alipay"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Alipay:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 100
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "SaveToDevice"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SaveToDevice:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 101
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "Favorite"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 102
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "SmsShare"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SmsShare:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 103
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "StickPage"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 104
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "WhatsAppFriend"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 105
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "FaceBook"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->FaceBook:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 106
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    const-string/jumbo v1, "AndroidSystem"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    .line 85
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CONNECTION:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Circle:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->LaiwangFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->LaiwangDynamic:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->UCweb:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Alipay:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SaveToDevice:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SmsShare:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->FaceBook:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->$VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->$VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    return-object v0
.end method
