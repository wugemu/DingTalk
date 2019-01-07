.class public final enum Lcom/alibaba/alimei/adpater/message/QuotedTextMode;
.super Ljava/lang/Enum;
.source "QuotedTextMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/adpater/message/QuotedTextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

.field public static final enum HIDE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

.field public static final enum NONE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

.field public static final enum SHOW:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->NONE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 6
    new-instance v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    const-string/jumbo v1, "SHOW"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->SHOW:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 7
    new-instance v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    const-string/jumbo v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->HIDE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    sget-object v1, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->NONE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->SHOW:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->HIDE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->$VALUES:[Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/adpater/message/QuotedTextMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/adpater/message/QuotedTextMode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->$VALUES:[Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    return-object v0
.end method
