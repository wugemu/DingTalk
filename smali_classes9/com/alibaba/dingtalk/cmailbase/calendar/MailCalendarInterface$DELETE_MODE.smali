.class public final enum Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;
.super Ljava/lang/Enum;
.source "MailCalendarInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DELETE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

.field public static final enum DELETE_ALL:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

.field public static final enum DELETE_FOLLOWING:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

.field public static final enum DELETE_SELECTED:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    new-instance v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    const-string/jumbo v1, "DELETE_SELECTED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_SELECTED:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    .line 228
    new-instance v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    const-string/jumbo v1, "DELETE_FOLLOWING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_FOLLOWING:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    .line 229
    new-instance v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    const-string/jumbo v1, "DELETE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_ALL:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    sget-object v1, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_SELECTED:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_FOLLOWING:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_ALL:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->$VALUES:[Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

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
    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    const-class v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->$VALUES:[Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    return-object v0
.end method
