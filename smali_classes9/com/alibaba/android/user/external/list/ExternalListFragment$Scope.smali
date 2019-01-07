.class final enum Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
.super Ljava/lang/Enum;
.source "ExternalListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field public static final enum ALL:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field public static final enum FREE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field public static final enum MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field public static final enum SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field public static final enum SUB:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;


# instance fields
.field private mName:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1092
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    const-string/jumbo v1, "MINE"

    sget v2, Lezg$l;->dt_external_title_my_contact:I

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1093
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    const-string/jumbo v1, "SHARE_ME"

    sget v2, Lezg$l;->dt_external_title_share_contact:I

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1094
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    const-string/jumbo v1, "SUB"

    sget v2, Lezg$l;->dt_external_title_subordinate_contact:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SUB:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1095
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    const-string/jumbo v1, "ALL"

    sget v2, Lezg$l;->dt_external_title_company_contact:I

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->ALL:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1096
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    const-string/jumbo v1, "FREE"

    sget v2, Lezg$l;->dt_external_title_allocted_contact:I

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->FREE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1090
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SUB:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->ALL:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->FREE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->$VALUES:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "name"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1102
    iput p3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->mType:I

    .line 1103
    iput p4, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->mName:I

    .line 1104
    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .prologue
    .line 1090
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->mName:I

    return v0
.end method

.method public static valueOf(I)Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1115
    packed-switch p0, :pswitch_data_0

    .line 1127
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    :goto_0
    return-object v0

    .line 1117
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    goto :goto_0

    .line 1119
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    goto :goto_0

    .line 1121
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SUB:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    goto :goto_0

    .line 1123
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->ALL:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    goto :goto_0

    .line 1125
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->FREE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1090
    const-class v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    .locals 1

    .prologue
    .line 1090
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->$VALUES:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    return-object v0
.end method


# virtual methods
.method public final getName()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->mName:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->mType:I

    return v0
.end method
