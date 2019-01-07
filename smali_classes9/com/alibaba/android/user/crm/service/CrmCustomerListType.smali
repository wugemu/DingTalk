.class public final enum Lcom/alibaba/android/user/crm/service/CrmCustomerListType;
.super Ljava/lang/Enum;
.source "CrmCustomerListType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/crm/service/CrmCustomerListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field public static final enum ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field public static final enum FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field public static final enum MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field public static final enum SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;


# instance fields
.field private mNameResId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    const-string/jumbo v1, "MINE"

    sget v2, Lezg$l;->my_customer:I

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 11
    new-instance v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    const-string/jumbo v1, "SUB"

    sget v2, Lezg$l;->dt_user_crm_subordinate_customer:I

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 12
    new-instance v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    const-string/jumbo v1, "ALL"

    sget v2, Lezg$l;->dt_user_crm_all_customer:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 13
    new-instance v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    const-string/jumbo v1, "FREE"

    sget v2, Lezg$l;->dt_user_crm_free_customer:I

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->$VALUES:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "nameResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->mType:I

    .line 20
    iput p4, p0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->mNameResId:I

    .line 21
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/user/crm/service/CrmCustomerListType;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 38
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 40
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/crm/service/CrmCustomerListType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->$VALUES:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    return-object v0
.end method


# virtual methods
.method public final getNameResId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->mNameResId:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->mType:I

    return v0
.end method
