.class public final enum Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;
.super Ljava/lang/Enum;
.source "MailComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComposeTypeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueFeedback:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public static final enum ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "NewMail"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 313
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueShareEmail"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 314
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueReply"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 315
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueReplyAll"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 316
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueFeedback"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueFeedback:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 317
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueEditDraft"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 318
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    const-string/jumbo v1, "ValueForward"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 311
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueFeedback:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->$VALUES:[Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

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
    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const-class v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->$VALUES:[Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    return-object v0
.end method
