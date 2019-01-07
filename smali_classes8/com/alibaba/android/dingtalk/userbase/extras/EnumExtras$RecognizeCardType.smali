.class public final enum Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;
.super Ljava/lang/Enum;
.source "EnumExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognizeCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

.field public static final enum HandIDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

.field public static final enum IDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

.field public static final enum NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

.field public static final enum SocialSecurityCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    const-string/jumbo v1, "NameCard"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    const-string/jumbo v1, "IDCard"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->IDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    const-string/jumbo v1, "HandIDCard"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->HandIDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    const-string/jumbo v1, "SocialSecurityCard"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->SocialSecurityCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->IDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->HandIDCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->SocialSecurityCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    return-object v0
.end method
