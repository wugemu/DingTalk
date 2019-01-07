.class public final enum Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;
.super Ljava/lang/Enum;
.source "OrgInviteFuc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

.field public static final enum LOCAL:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

.field public static final enum REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    const-string/jumbo v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->LOCAL:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    const-string/jumbo v1, "REMOTE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    sget-object v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->LOCAL:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->$VALUES:[Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->$VALUES:[Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    return-object v0
.end method
