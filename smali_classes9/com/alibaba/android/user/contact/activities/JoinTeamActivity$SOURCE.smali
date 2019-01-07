.class final enum Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;
.super Ljava/lang/Enum;
.source "JoinTeamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinTeamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

.field public static final enum FROM_CONTACT:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

.field public static final enum FROM_INVITE:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

.field public static final enum FROM_REGISTER:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

.field public static final enum FROM_URL:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    const-string/jumbo v1, "FROM_REGISTER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_REGISTER:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    .line 304
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    const-string/jumbo v1, "FROM_CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_CONTACT:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    .line 305
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    const-string/jumbo v1, "FROM_INVITE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_INVITE:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    .line 306
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    const-string/jumbo v1, "FROM_URL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_URL:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    .line 302
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_REGISTER:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_CONTACT:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_INVITE:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->FROM_URL:Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->$VALUES:[Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

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
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const-class v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->$VALUES:[Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/activities/JoinTeamActivity$SOURCE;

    return-object v0
.end method
