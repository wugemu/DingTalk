.class public final enum Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
.super Ljava/lang/Enum;
.source "AppInfoConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

.field public static final enum REQ_TYPE_ASYNC:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

.field public static final enum REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

.field public static final enum REQ_TYPE_SYNCTRY:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    const-string/jumbo v1, "REQ_TYPE_ASYNC"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_ASYNC:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    new-instance v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    const-string/jumbo v1, "REQ_TYPE_SYNCTRY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCTRY:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    new-instance v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    const-string/jumbo v1, "REQ_TYPE_SYNCFORCE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_ASYNC:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCTRY:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->$VALUES:[Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->$VALUES:[Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    return-object v0
.end method
