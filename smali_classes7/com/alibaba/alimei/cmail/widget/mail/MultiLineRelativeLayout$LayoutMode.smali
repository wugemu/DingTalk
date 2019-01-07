.class final enum Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;
.super Ljava/lang/Enum;
.source "MultiLineRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

.field public static final enum DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

.field public static final enum SINGLE_LINE:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    const-string/jumbo v1, "SINGLE_LINE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->SINGLE_LINE:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    sget-object v1, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->SINGLE_LINE:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->$VALUES:[Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->$VALUES:[Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    return-object v0
.end method
