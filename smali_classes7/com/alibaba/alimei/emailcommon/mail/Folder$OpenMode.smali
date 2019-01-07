.class public final enum Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
.super Ljava/lang/Enum;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

.field public static final enum READ_ONLY:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

.field public static final enum READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    const-string/jumbo v1, "READ_WRITE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    const-string/jumbo v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method
