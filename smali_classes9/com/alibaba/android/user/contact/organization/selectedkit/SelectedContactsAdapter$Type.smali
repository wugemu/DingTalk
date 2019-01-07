.class public final enum Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;
.super Ljava/lang/Enum;
.source "SelectedContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

.field public static final enum USER:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    const-string/jumbo v1, "DEPT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    .line 51
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    sget-object v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->$VALUES:[Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->$VALUES:[Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    return-object v0
.end method
