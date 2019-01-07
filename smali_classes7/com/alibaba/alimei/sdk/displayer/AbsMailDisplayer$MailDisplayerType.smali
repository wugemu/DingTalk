.class public final enum Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;
.super Ljava/lang/Enum;
.source "AbsMailDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MailDisplayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

.field public static final enum DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

.field public static final enum NormarType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    const-string/jumbo v1, "NormarType"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->NormarType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    .line 27
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    const-string/jumbo v1, "DividerType"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->NormarType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->$VALUES:[Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->$VALUES:[Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    return-object v0
.end method
