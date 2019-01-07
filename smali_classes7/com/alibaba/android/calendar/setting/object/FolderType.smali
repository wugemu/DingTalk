.class public final enum Lcom/alibaba/android/calendar/setting/object/FolderType;
.super Ljava/lang/Enum;
.source "FolderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/setting/object/FolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/setting/object/FolderType;

.field public static final enum ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

.field public static final enum DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

.field public static final enum SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

.field public static final enum SYSTEM_CALENDAR:Lcom/alibaba/android/calendar/setting/object/FolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    const-string/jumbo v1, "DING_DING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/setting/object/FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 10
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    const-string/jumbo v1, "SHARE_FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/calendar/setting/object/FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 11
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    const-string/jumbo v1, "ALI_MAIL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/calendar/setting/object/FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 12
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    const-string/jumbo v1, "SYSTEM_CALENDAR"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/calendar/setting/object/FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->SYSTEM_CALENDAR:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/calendar/setting/object/FolderType;

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->SYSTEM_CALENDAR:Lcom/alibaba/android/calendar/setting/object/FolderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->$VALUES:[Lcom/alibaba/android/calendar/setting/object/FolderType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/setting/object/FolderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/setting/object/FolderType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/setting/object/FolderType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->$VALUES:[Lcom/alibaba/android/calendar/setting/object/FolderType;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/setting/object/FolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/setting/object/FolderType;

    return-object v0
.end method
