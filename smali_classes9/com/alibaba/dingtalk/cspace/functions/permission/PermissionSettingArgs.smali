.class public Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
.super Ljava/lang/Object;
.source "PermissionSettingArgs.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public dentryIconResId:I

.field public dentryId:Ljava/lang/String;

.field public dentryName:Ljava/lang/String;

.field public dentryType:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public orgId:J

.field public settingMode:I

.field public spaceId:Ljava/lang/String;

.field public spaceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    return-void
.end method
