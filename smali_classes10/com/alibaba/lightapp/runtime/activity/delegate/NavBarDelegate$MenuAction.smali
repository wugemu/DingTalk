.class final enum Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;
.super Ljava/lang/Enum;
.source "NavBarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MenuAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

.field public static final enum SetAction:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

.field public static final enum SetMenu:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1808
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    const-string/jumbo v1, "SetMenu"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetMenu:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    .line 1809
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    const-string/jumbo v1, "SetAction"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetAction:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    .line 1807
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    sget-object v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetMenu:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetAction:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->$VALUES:[Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

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
    .line 1807
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1807
    const-class v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;
    .locals 1

    .prologue
    .line 1807
    sget-object v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->$VALUES:[Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    return-object v0
.end method
