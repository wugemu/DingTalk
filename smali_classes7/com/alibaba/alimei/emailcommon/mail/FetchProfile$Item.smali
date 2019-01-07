.class public final enum Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;
.super Ljava/lang/Enum;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

.field public static final enum STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "FLAGS"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 36
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "ENVELOPE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 46
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "STRUCTURE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 52
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY_SANE"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 57
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 62
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    const-string/jumbo v1, "EML"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method
